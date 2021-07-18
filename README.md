I need to read some of the information reported by powermetrics(1), but don't want to invoke powermetrics(1). It turns out I have to use IOReport functions to retrieve data from kernel side IOKit modulars. Unfortunately, I could not find documentation on using IOReport in user-level programs. Fortunately, there are kernel side code comments, such as [1], and some user-space source code open-sourced by Apple, e.g. [2]. With them and some previous work such as [3], I put together this example that could dump all the IOReport information it could access.

Tested on some MacOS machines and jailbroken iDevices.

[1] [IOReporter.h](https://opensource.apple.com/source/xnu/xnu-4570.41.2/iokit/IOKit/IOKernelReporters.h.auto.html)

[2] [pmset.c](https://opensource.apple.com/source/PowerManagement/PowerManagement-1132.81.1/pmset/pmset.c.auto.html)

[3] [IOReport.h in Private SDK](https://github.com/samdmarshall/OSXPrivateSDK/blob/master/PrivateSDK10.10.sparse.sdk/usr/local/include/IOReport.h)
