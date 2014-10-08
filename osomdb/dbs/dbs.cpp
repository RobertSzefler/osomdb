#include "defaults.h"
#include "ctpl_stl.h"

int main(int argc, char *argv[])
{
  (void)argc; (void)argv;
  
  ctpl::thread_pool worker_pool(DEF_N_WORKER_THREADS);

  return 0;
}
