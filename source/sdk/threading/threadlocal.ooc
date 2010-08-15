import threading/Thread, os/Time, math/Random

include stdlib
usleep: extern func (Int)

someGlobal := ThreadLocal<Int> new()

MyRunnable: class {

    id: Int
    init: func ~id (=id) {}

    run: func {
        stdout: extern FILE*
        someGlobal set(id)
        for(i in 0..10) {
            printf("%d (%d), ", id, someGlobal get())
            fflush(stdout)
            Time sleepMilli(rand() % 2000)
            //usleep(rand() % 1000000)
        }
    }

}


main: func {


    //for(i in 0..3) {
        //t := Thread new(MyRunnable new())
        //t start()
        //t wait()
    //}

    t1 := Thread new(|| MyRunnable new(1) run())
    t2 := Thread new(|| MyRunnable new(2) run())
    t3 := Thread new(|| MyRunnable new(3) run())

    t1 start()
    t2 start()
    t3 start()

    t1 wait()
    t2 wait()
    t3 wait()

    printf("\n")

    // Also allow creating threads from closures maybe...
    //t2 := Thread new(func { /* do work */ })
    //t2 start()

}
