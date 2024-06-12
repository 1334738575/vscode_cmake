#include<stdio.h>

const int gsx = 1;
const int gsy = 1;
const int bsx = 2;
const int bsy = 4;
const int bsz = 1;
const int ts = gsx*gsy*bsx*bsy*bsz;

__global__ void hello_from_gpu(const int const* in1, const int const* in2, int* out){
	
	const int bid = blockIdx.x;
	const int tid = threadIdx.x;
	const int yid = threadIdx.y;
	const int id = bid * bsx * bsy + tid * bsy + yid;
	out[id] = in1[id] * in2[id];
    printf("Thread %d: %d * %d = %d\n", id, in1[id], in2[id], out[id]);
	printf("hello world from gpu block %d and thread (%d,%d)!\n", bid, tid, yid);
}

extern "C" int mainCUDA()
{
    printf("helloword\n");
    int iDeviceCount = 0;
    cudaError_t error = cudaGetDeviceCount(&iDeviceCount); //获取GPU数量
    printf("Size of GPU is %d", iDeviceCount);
    // int iDev = 0;
    // error = cudaSetDevice(iDev); //设置运行GPU编号
    
	size_t dataSize = ts * sizeof(int);
    int *a, *b, *s;
    a = (int *)malloc(dataSize);
    b = (int *)malloc(dataSize);
    s = (int *)malloc(dataSize);
    if(a != NULL && b != NULL && s != NULL){
        memset(a, 0, dataSize);
        memset(b, 0, dataSize);
        memset(s, 0, dataSize);
        printf("Host data prepear!\n");
    }

    int *ca, *cb, *cs;
    cudaMalloc((int**)&ca, dataSize);
    cudaMalloc((int**)&cb, dataSize);
    cudaMalloc((int**)&cs, dataSize);
    if(ca != NULL && cb != NULL && cs != NULL){
        cudaMemset(ca, 0, dataSize);
        cudaMemset(cb, 0, dataSize);
        cudaMemset(cs, 0, dataSize);
        printf("Device data prepear!\n");
    }

    a[0] = 1;
    a[1] = 2;
    a[2] = 3;
    a[3] = 4;
    a[4] = 4;
    a[5] = 3;
    a[6] = 2;
    a[7] = 1;
    b[0] = 9;
    b[1] = 8;
    b[2] = 7;
    b[3] = 6;
    b[4] = 6;
    b[5] = 7;
    b[6] = 8;
    b[7] = 9;
    // for(int i=0; i<ts; ++i){
	// 	printf("%d ", a[i]);
	// 	// printf("%d ", a[i]*b[i]);
	// }

    cudaMemcpy(ca, a, dataSize, cudaMemcpyHostToDevice);
    cudaMemcpy(cb, b, dataSize, cudaMemcpyHostToDevice);
    // cudaMemcpy(s, cs, dataSize, cudaMemcpyHostToDevice);

	const dim3 grid_size(gsx, gsy, 1);
	const dim3 block_size(bsx, bsy, bsz);
	hello_from_gpu<<<grid_size,block_size>>>(ca,cb,cs);
	cudaDeviceSynchronize();

    // cudaMemcpy(a, ca, dataSize, cudaMemcpyHostToDevice);
    // cudaMemcpy(b, cb, dataSize, cudaMemcpyHostToDevice);
    cudaMemcpy(s, cs, dataSize, cudaMemcpyDeviceToHost);

	for(int i=0; i<ts; ++i){
		printf("%d ", s[i]);
		// printf("%d ", a[i]*b[i]);
	}

    free(a);
    free(b);
    free(s);
    cudaFree(ca);
    cudaFree(cb);
    cudaFree(cs);

    cudaDeviceReset();
    return 0;
}
