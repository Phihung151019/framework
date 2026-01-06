.class public Lcom/android/commands/svc/UsbCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "UsbCommand.java"


# static fields
.field private static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/commands/svc/UsbCommand;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    const-string v0, "usb"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/UsbCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: svc usb setFunctions [function]\n         Set the current usb function. If function is blank, sets to charging.\n       svc usb setScreenUnlockedFunctions [function]\n         Sets the functions which, if the device was charging,\n         become current on screen unlock.\n         If function is blank, turn off this feature.\n       svc usb getFunctions\n         Gets the list of currently enabled functions\n         possible values of [function] are any of \'mtp\', \'ptp\', \'rndis\',\n         \'midi\', \'ncm (if supporting gadget hal v1.2)\'\n       svc usb resetUsbGadget\n         Reset usb gadget\n       svc usb getUsbSpeed\n         Gets current USB speed\n         possible values of USB speed are any of \'low speed\', \'full speed\',\n         \'high speed\', \'super speed\', \'super speed (10G)\',\n         \'super speed (20G)\', or higher (future extension)\n       svc usb getGadgetHalVersion\n         Gets current Gadget Hal Version\n         possible values of Hal version are any of \'unknown\', \'V1_0\', \'V1_1\',\n         \'V1_2\'\n       svc usb getUsbHalVersion\n         Gets current USB Hal Version\n         possible values of Hal version are any of \'unknown\', \'V1_0\', \'V1_1\',\n         \'V1_2\', \'V1_3\'\n       svc usb resetUsbPort [port number]\n         Reset the specified connected usb port\n         default: the first connected usb port\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 16
    .param p1, "args"    # [Ljava/lang/String;

    .line 85
    move-object/from16 v1, p1

    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_14

    .line 86
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 88
    .local v3, "context":Landroid/content/Context;
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 89
    .local v4, "usbManager":Landroid/hardware/usb/UsbManager;
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v5

    .line 92
    .local v5, "usbMgr":Landroid/hardware/usb/IUsbManager;
    if-nez v5, :cond_0

    .line 93
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Could not obtain USB service. Try again later."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    return-void

    .line 97
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 98
    .local v6, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/android/commands/svc/UsbCommand$1;

    move-object/from16 v7, p0

    invoke-direct {v0, v7}, Lcom/android/commands/svc/UsbCommand$1;-><init>(Lcom/android/commands/svc/UsbCommand;)V

    move-object v8, v0

    .line 104
    .local v8, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const-string v0, "setFunctions"

    const/4 v9, 0x1

    aget-object v10, v1, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, ""

    const/4 v11, 0x3

    const-string v12, "Error communicating with UsbManager: "

    if-eqz v0, :cond_2

    .line 106
    :try_start_0
    sget-object v0, Lcom/android/commands/svc/UsbCommand;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 107
    .local v0, "operationId":I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setCurrentFunctions opId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    nop

    .line 109
    array-length v9, v1

    if-lt v9, v11, :cond_1

    aget-object v10, v1, v2

    .line 108
    :cond_1
    invoke-static {v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v5, v9, v10, v0}, Landroid/hardware/usb/IUsbManager;->setCurrentFunctions(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "operationId":I
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 114
    :cond_2
    const-string v0, "getFunctions"

    aget-object v13, v1, v9

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :try_start_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 117
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getCurrentFunctions()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 122
    :cond_3
    const-string v0, "setScreenUnlockedFunctions"

    aget-object v13, v1, v9

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    nop

    .line 125
    :try_start_2
    array-length v0, v1

    if-lt v0, v11, :cond_4

    aget-object v10, v1, v2

    .line 124
    :cond_4
    invoke-static {v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v5, v9, v10}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    goto :goto_2

    .line 126
    :catch_2
    move-exception v0

    .line 127
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 130
    :cond_5
    const-string v0, "resetUsbGadget"

    aget-object v10, v1, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    :try_start_3
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->resetUsbGadget()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 135
    goto :goto_3

    .line 133
    :catch_3
    move-exception v0

    .line 134
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    .line 137
    :cond_6
    const-string v0, "getUsbSpeed"

    aget-object v10, v1, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    :try_start_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 140
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getCurrentUsbSpeed()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbManager;->usbSpeedToBandwidth(I)I

    move-result v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 143
    goto :goto_4

    .line 141
    :catch_4
    move-exception v0

    .line 142
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void

    .line 145
    :cond_7
    const-string v0, "getGadgetHalVersion"

    aget-object v10, v1, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    :try_start_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 149
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getGadgetHalVersion()I

    move-result v2

    .line 148
    invoke-static {v2}, Landroid/hardware/usb/UsbManager;->usbGadgetHalVersionToString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 152
    goto :goto_5

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void

    .line 154
    :cond_8
    const-string v0, "getUsbHalVersion"

    aget-object v10, v1, v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    :try_start_6
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getUsbHalVersion()I

    move-result v0

    .line 158
    .local v0, "version":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_9

    .line 159
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_3"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 160
    :cond_9
    const/16 v2, 0xc

    if-ne v0, v2, :cond_a

    .line 161
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_2"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 162
    :cond_a
    const/16 v2, 0xb

    if-ne v0, v2, :cond_b

    .line 163
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_1"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 164
    :cond_b
    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 165
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_0"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 167
    :cond_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "unknown"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 171
    .end local v0    # "version":I
    :goto_6
    goto :goto_7

    .line 169
    :catch_6
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7
    return-void

    .line 173
    :cond_d
    const-string v0, "resetUsbPort"

    aget-object v9, v1, v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 175
    :try_start_7
    array-length v0, v1

    const/4 v9, -0x1

    if-lt v0, v11, :cond_e

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_e
    move v0, v9

    .line 176
    .local v0, "portNum":I
    :goto_8
    const/4 v2, 0x0

    .line 177
    .local v2, "port":Landroid/hardware/usb/UsbPort;
    const/4 v10, 0x0

    .line 178
    .local v10, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v11

    .line 179
    .local v11, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/UsbPort;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 181
    .local v13, "numPorts":I
    if-lez v13, :cond_13

    .line 182
    if-eq v0, v9, :cond_f

    if-ge v0, v13, :cond_f

    .line 183
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v9

    move-object v10, v9

    .line 184
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 185
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbPort;

    move-object v2, v9

    .line 186
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Get the USB port: port"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 190
    :cond_f
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v13, :cond_11

    .line 191
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v9

    .line 192
    .local v9, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v9}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 193
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/usb/UsbPort;

    move-object v2, v14

    .line 194
    move-object v10, v9

    .line 195
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use the default USB port: port"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    goto :goto_a

    .line 190
    .end local v9    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    goto :goto_9

    .line 201
    :cond_11
    :goto_a
    if-eqz v2, :cond_12

    invoke-virtual {v10}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 202
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reset the USB port: port"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v6, v8}, Landroid/hardware/usb/UsbPort;->resetUsbPort(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_b

    .line 206
    :cond_12
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "There is no available reset USB port"

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 210
    :cond_13
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "No USB ports"

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 214
    .end local v0    # "portNum":I
    .end local v2    # "port":Landroid/hardware/usb/UsbPort;
    .end local v10    # "portStatus":Landroid/hardware/usb/UsbPortStatus;
    .end local v11    # "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/UsbPort;>;"
    .end local v13    # "numPorts":I
    :goto_b
    goto :goto_c

    .line 212
    :catch_7
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void

    .line 85
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "usbManager":Landroid/hardware/usb/UsbManager;
    .end local v5    # "usbMgr":Landroid/hardware/usb/IUsbManager;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v7, p0

    .line 218
    :cond_15
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7}, Lcom/android/commands/svc/UsbCommand;->longHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "Control Usb state"

    return-object v0
.end method
