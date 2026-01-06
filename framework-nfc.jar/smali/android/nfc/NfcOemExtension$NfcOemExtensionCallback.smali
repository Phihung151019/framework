.class public final Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
.super Landroid/nfc/INfcOemExtensionCallback$Stub;
.source "NfcOemExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcOemExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NfcOemExtensionCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/NfcOemExtension;


# direct methods
.method public static synthetic blacklist $r8$lambda$1YMasON0vCqZZh282vbxTyflWqA(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onEeListenActivated$4(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4CZWFaaMc1adGJpK3jLkfnZKSV0(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onNdefRead$9(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7atH5y7YbXUE_pSDQnPX8OPGZSc(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onBootStarted$13(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IDOgPTAVuGoBp5ufdBKmWOX5Yfg(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onNdefMessage$30(Landroid/nfc/NfcOemExtension$Callback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kc7z3nk8M8oBdRNTLs7T2nDu8Fw(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onRfDiscoveryStarted$3(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Khxr_FoB1u2lmKM7g9f6-kQ4Ngo(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onCardEmulationActivated$1(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KkF9wmtsnRIRxhYRGCv7ls8K4bg(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/OemLogItems;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onLogEventNotified$35(Landroid/nfc/OemLogItems;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LmNaCyMd_-5RHH6FDKB6-6vdlc8(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onEeUpdated$6(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Lt12p5gq8VnCDbop_CND5Kj342w(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onLaunchHceAppChooserActivity$33(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NK33agEl_pRv4Dhh9dj5A-DoQbk(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onTagConnected$0(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NaTimm6j_JH69v8wQio2m29e31o(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onEnableStarted$15(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SL1JniUlahNRVlkTnLjrSW01ZEM(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onRoutingTableFull$28(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$T5XdvnAsHfMhMz3Aw8VHQ2W2rkI(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onStateUpdated$7(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XED7oPd1dx7nMvlevVShTGloMjM(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onBootFinished$18(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Xb_Dk78-7tlw1KxpFWA-R-PNXYA(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onLaunchHceTapAgainActivity$34(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_2vHBgbRYbFW3jgsRxRJIoMRA90(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onEnableFinished$19(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eviIRbX8Ewa1GGMIJEAMN6SEBGA(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onDisableStarted$17(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fAlG5AougDFXM7P74l2vKLsWiM8(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onApplyRouting$8(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fzwExwbFLc5bWNpNRe_JcuCbTT4(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onDisable$11(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gte71615BdspW4y3DZc5Q-Vb1TA(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onRoutingChanged$22(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$i9alSJw-YT7BSmr1psW05g7Xims(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onHceEventReceived$25(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iP2qiaA1YAuz7OxYXXyLBB-fdJY(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onTagDispatch$21(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lNiXsdWr8oAdPMkcKYYKM-cPgWo(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onRfFieldDetected$2(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nno-oY1rsWpaNOhkeQeNmsZ_G78(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onEnable$10(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oZSuiJ7R2Ddm99dlmipA60-zHXM(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onReaderOptionChanged$26(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rc4vnXPsAU8knrayX7-XSO1hWxY(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onRoutingChangeCompleted$24(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$roqMohs6Q4XMseAZrJagxsvAUzA(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onNdefMessage$31(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uhG6T-iMf-VoUnlQJA5fnAlGzLk(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Ljava/util/List;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onGetOemAppSearchIntent$29(Ljava/util/List;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$utiayGugxbheKfl-PoqDdstYdxs(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onExtractOemPackages$36(Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yy-Csi01f6Rx1t6bH-HdlVv4KwY(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->lambda$onDisableFinished$20(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/nfc/NfcOemExtension;)V
    .locals 0
    .param p1, "this$0"    # Landroid/nfc/NfcOemExtension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 948
    iput-object p1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist handleNonVoidCallbackWithInput(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TS;TT;",
            "Ljava/util/function/Function<",
            "TT;TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    .local p1, "defaultValue":Ljava/lang/Object;, "TS;"
    .local p2, "input":Ljava/lang/Object;, "TT;"
    .local p3, "callbackMethod":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TS;>;"
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1184
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1185
    .local v1, "identity":J
    move-object v3, p1

    .line 1187
    .local v3, "result":Ljava/lang/Object;, "TS;"
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 1188
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda20;

    invoke-direct {v6, p3, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda20;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1189
    .local v5, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TS;>;"
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1191
    .local v6, "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v8, v9, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v7

    .line 1199
    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1200
    :goto_0
    goto :goto_1

    .line 1199
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 1195
    :catch_0
    move-exception v7

    .line 1196
    .local v7, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_4
    const-string v8, "NfcOemExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Callback timed out: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1199
    .end local v7    # "e":Ljava/util/concurrent/TimeoutException;
    :try_start_5
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1193
    :catch_1
    move-exception v7

    .line 1194
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1199
    .end local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 1202
    .end local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v5    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TS;>;"
    .end local v6    # "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1
    :try_start_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    nop

    .line 1204
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-object v3

    .line 1199
    .restart local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v5    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TS;>;"
    .restart local v6    # "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_2
    :try_start_9
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1200
    nop

    .end local v1    # "identity":J
    .end local v3    # "result":Ljava/lang/Object;, "TS;"
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "defaultValue":Ljava/lang/Object;, "TS;"
    .end local p2    # "input":Ljava/lang/Object;, "TT;"
    .end local p3    # "callbackMethod":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TS;>;"
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1202
    .end local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v5    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TS;>;"
    .end local v6    # "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v1    # "identity":J
    .restart local v3    # "result":Ljava/lang/Object;, "TS;"
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "defaultValue":Ljava/lang/Object;, "TS;"
    .restart local p2    # "input":Ljava/lang/Object;, "TT;"
    .restart local p3    # "callbackMethod":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TS;>;"
    :catchall_1
    move-exception v4

    :try_start_a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    nop

    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "defaultValue":Ljava/lang/Object;, "TS;"
    .end local p2    # "input":Ljava/lang/Object;, "TT;"
    .end local p3    # "callbackMethod":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TS;>;"
    throw v4

    .line 1205
    .end local v1    # "identity":J
    .end local v3    # "result":Ljava/lang/Object;, "TS;"
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "defaultValue":Ljava/lang/Object;, "TS;"
    .restart local p2    # "input":Ljava/lang/Object;, "TT;"
    .restart local p3    # "callbackMethod":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TS;>;"
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1
.end method

.method private blacklist handleNonVoidCallbackWithoutInput(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "callbackMethod":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1211
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1212
    .local v1, "identity":J
    move-object v3, p1

    .line 1214
    .local v3, "result":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 1215
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v5, Ljava/util/concurrent/FutureTask;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v6, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Supplier;)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1216
    .local v5, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1218
    .local v6, "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v8, v9, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v7

    .line 1226
    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1227
    :goto_0
    goto :goto_1

    .line 1226
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 1222
    :catch_0
    move-exception v7

    .line 1223
    .local v7, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_4
    const-string v8, "NfcOemExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Callback timed out: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1226
    .end local v7    # "e":Ljava/util/concurrent/TimeoutException;
    :try_start_5
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1220
    :catch_1
    move-exception v7

    .line 1221
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1226
    .end local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 1229
    .end local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v5    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    .end local v6    # "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1
    :try_start_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    nop

    .line 1231
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-object v3

    .line 1226
    .restart local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v5    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    .restart local v6    # "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_2
    :try_start_9
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1227
    nop

    .end local v1    # "identity":J
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    .end local p2    # "callbackMethod":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1229
    .end local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v5    # "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    .end local v6    # "unused":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v1    # "identity":J
    .restart local v3    # "result":Ljava/lang/Object;, "TT;"
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    .restart local p2    # "callbackMethod":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    :catchall_1
    move-exception v4

    :try_start_a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    nop

    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    .end local p2    # "callbackMethod":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    throw v4

    .line 1232
    .end local v1    # "identity":J
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    .restart local p2    # "callbackMethod":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1
.end method

.method private blacklist handleVoid2ArgCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(TT1;TT2;",
            "Ljava/util/function/BiConsumer<",
            "TT1;TT2;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1169
    .local p1, "input1":Ljava/lang/Object;, "TT1;"
    .local p2, "input2":Ljava/lang/Object;, "TT2;"
    .local p3, "callbackMethod":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT1;TT2;>;"
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1170
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1172
    .local v1, "identity":J
    :try_start_1
    new-instance v3, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v3, p3, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    nop

    .line 1178
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1179
    return-void

    .line 1176
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v3

    .line 1174
    .local v3, "ex":Ljava/lang/RuntimeException;
    nop

    .end local v1    # "identity":J
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "input1":Ljava/lang/Object;, "TT1;"
    .end local p2    # "input2":Ljava/lang/Object;, "TT2;"
    .end local p3    # "callbackMethod":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT1;TT2;>;"
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1176
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "input1":Ljava/lang/Object;, "TT1;"
    .restart local p2    # "input2":Ljava/lang/Object;, "TT2;"
    .restart local p3    # "callbackMethod":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT1;TT2;>;"
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1177
    nop

    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "input1":Ljava/lang/Object;, "TT1;"
    .end local p2    # "input2":Ljava/lang/Object;, "TT2;"
    .end local p3    # "callbackMethod":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT1;TT2;>;"
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    throw v3

    .line 1178
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "input1":Ljava/lang/Object;, "TT1;"
    .restart local p2    # "input2":Ljava/lang/Object;, "TT2;"
    .restart local p3    # "callbackMethod":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT1;TT2;>;"
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private blacklist handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Consumer<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1155
    .local p1, "input":Ljava/lang/Object;, "TT;"
    .local p2, "callbackMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1156
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1158
    .local v1, "identity":J
    :try_start_1
    new-instance v3, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda32;

    invoke-direct {v3, p2, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda32;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {p3, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    nop

    .line 1164
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1165
    return-void

    .line 1162
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v3

    .line 1160
    .local v3, "ex":Ljava/lang/RuntimeException;
    nop

    .end local v1    # "identity":J
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "input":Ljava/lang/Object;, "TT;"
    .end local p2    # "callbackMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1162
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "input":Ljava/lang/Object;, "TT;"
    .restart local p2    # "callbackMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    nop

    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "input":Ljava/lang/Object;, "TT;"
    .end local p2    # "callbackMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    throw v3

    .line 1164
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "input":Ljava/lang/Object;, "TT;"
    .restart local p2    # "callbackMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method static synthetic blacklist lambda$handleNonVoidCallbackWithInput$39(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "callbackMethod"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1188
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleVoid2ArgCallback$38(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "callbackMethod"    # Ljava/util/function/BiConsumer;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 1172
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleVoidCallback$37(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "callbackMethod"    # Ljava/util/function/Consumer;
    .param p1, "input"    # Ljava/lang/Object;

    .line 1158
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$onApplyRouting$8(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 999
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p1}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1000
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda28;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda28;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 999
    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBootFinished$18(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1038
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda57;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda57;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBootStarted$12(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "input"    # Ljava/lang/Object;

    .line 1023
    invoke-interface {p0}, Landroid/nfc/NfcOemExtension$Callback;->onBootStarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onBootStarted$13(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "ex"    # Ljava/util/concurrent/Executor;

    .line 1023
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda61;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda61;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCardEmulationActivated$1(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isActivated"    # Z
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 960
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda39;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda39;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisable$11(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isAllowed"    # Landroid/os/ResultReceiver;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1017
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p1}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1018
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda56;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda56;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1017
    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDisableFinished$20(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1048
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda44;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda44;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDisableStarted$16(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "input"    # Ljava/lang/Object;

    .line 1033
    invoke-interface {p0}, Landroid/nfc/NfcOemExtension$Callback;->onDisableStarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onDisableStarted$17(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "ex"    # Ljava/util/concurrent/Executor;

    .line 1033
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda8;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEeListenActivated$4(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isActivated"    # Z
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 981
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEeUpdated$5(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "input"    # Ljava/lang/Object;

    .line 987
    invoke-interface {p0}, Landroid/nfc/NfcOemExtension$Callback;->onEeUpdated()V

    return-void
.end method

.method private synthetic blacklist lambda$onEeUpdated$6(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "ex"    # Ljava/util/concurrent/Executor;

    .line 987
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda38;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnable$10(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isAllowed"    # Landroid/os/ResultReceiver;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1011
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p1}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1012
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda40;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda40;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1011
    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onEnableFinished$19(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1043
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda60;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda60;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onEnableStarted$14(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "input"    # Ljava/lang/Object;

    .line 1028
    invoke-interface {p0}, Landroid/nfc/NfcOemExtension$Callback;->onEnableStarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onEnableStarted$15(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "ex"    # Ljava/util/concurrent/Executor;

    .line 1028
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda9;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onExtractOemPackages$36(Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "packageConsumer"    # Landroid/os/ResultReceiver;
    .param p3, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p4, "ex"    # Ljava/util/concurrent/Executor;

    .line 1148
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p2}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1150
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda37;

    invoke-direct {v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda37;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1148
    invoke-direct {p0, p1, v0, v1, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoid2ArgCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onGetOemAppSearchIntent$29(Ljava/util/List;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "packages"    # Ljava/util/List;
    .param p2, "intentConsumer"    # Landroid/os/ResultReceiver;
    .param p3, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p4, "ex"    # Ljava/util/concurrent/Executor;

    .line 1089
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p2}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1090
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda51;

    invoke-direct {v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda51;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1089
    invoke-direct {p0, p1, v0, v1, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoid2ArgCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHceEventReceived$25(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1070
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda23;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLaunchHceAppChooserActivity$32(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "selectedAid"    # Ljava/lang/String;
    .param p2, "services"    # Ljava/util/List;
    .param p3, "failedComponent"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 1120
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/nfc/NfcOemExtension$Callback;->onLaunchHceAppChooserActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLaunchHceAppChooserActivity$33(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 10
    .param p1, "selectedAid"    # Ljava/lang/String;
    .param p2, "services"    # Ljava/util/List;
    .param p3, "failedComponent"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p6, "ex"    # Ljava/util/concurrent/Executor;

    .line 1117
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1118
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1120
    .local v2, "identity":J
    :try_start_1
    new-instance v4, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda11;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object v5, p5

    invoke-direct/range {v4 .. v9}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda11;-><init>(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v5, p6

    :try_start_2
    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1125
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    nop

    .line 1127
    .end local v2    # "identity":J
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1128
    return-void

    .line 1122
    .restart local v2    # "identity":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v0

    move-object/from16 v5, p6

    goto :goto_1

    .line 1122
    :catch_1
    move-exception v0

    move-object/from16 v5, p6

    .line 1123
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .end local v2    # "identity":J
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "selectedAid":Ljava/lang/String;
    .end local p2    # "services":Ljava/util/List;
    .end local p3    # "failedComponent":Landroid/content/ComponentName;
    .end local p4    # "category":Ljava/lang/String;
    .end local p5    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .end local p6    # "ex":Ljava/util/concurrent/Executor;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1125
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    .restart local v2    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "selectedAid":Ljava/lang/String;
    .restart local p2    # "services":Ljava/util/List;
    .restart local p3    # "failedComponent":Landroid/content/ComponentName;
    .restart local p4    # "category":Ljava/lang/String;
    .restart local p5    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local p6    # "ex":Ljava/util/concurrent/Executor;
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    nop

    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p1    # "selectedAid":Ljava/lang/String;
    .end local p2    # "services":Ljava/util/List;
    .end local p3    # "failedComponent":Landroid/content/ComponentName;
    .end local p4    # "category":Ljava/lang/String;
    .end local p5    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .end local p6    # "ex":Ljava/util/concurrent/Executor;
    throw v0

    .line 1127
    .end local v2    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p1    # "selectedAid":Ljava/lang/String;
    .restart local p2    # "services":Ljava/util/List;
    .restart local p3    # "failedComponent":Landroid/content/ComponentName;
    .restart local p4    # "category":Ljava/lang/String;
    .restart local p5    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local p6    # "ex":Ljava/util/concurrent/Executor;
    :catchall_2
    move-exception v0

    move-object/from16 v5, p6

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method private synthetic blacklist lambda$onLaunchHceTapAgainActivity$34(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p4, "ex"    # Ljava/util/concurrent/Executor;

    .line 1135
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda26;

    invoke-direct {v0, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda26;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoid2ArgCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onLogEventNotified$35(Landroid/nfc/OemLogItems;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "item"    # Landroid/nfc/OemLogItems;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1141
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda18;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onNdefMessage$30(Landroid/nfc/NfcOemExtension$Callback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "hasOemExecutableContent"    # Landroid/os/ResultReceiver;

    .line 1100
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p4}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    invoke-interface {p1, p2, p3, v0}, Landroid/nfc/NfcOemExtension$Callback;->onNdefMessage(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onNdefMessage$31(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 10
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "hasOemExecutableContent"    # Landroid/os/ResultReceiver;
    .param p4, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p5, "ex"    # Ljava/util/concurrent/Executor;

    .line 1097
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1098
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1100
    .local v2, "identity":J
    :try_start_1
    new-instance v4, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda1;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    .end local p1    # "tag":Landroid/nfc/Tag;
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    .end local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .end local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .local v6, "cb":Landroid/nfc/NfcOemExtension$Callback;
    .local v7, "tag":Landroid/nfc/Tag;
    .local v8, "message":Landroid/nfc/NdefMessage;
    .local v9, "hasOemExecutableContent":Landroid/os/ResultReceiver;
    :try_start_2
    invoke-direct/range {v4 .. v9}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda1;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NfcOemExtension$Callback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    invoke-interface {p5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1105
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    nop

    .line 1107
    .end local v2    # "identity":J
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1108
    return-void

    .line 1105
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 1102
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 1105
    .end local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .end local v7    # "tag":Landroid/nfc/Tag;
    .end local v8    # "message":Landroid/nfc/NdefMessage;
    .end local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .restart local p1    # "tag":Landroid/nfc/Tag;
    .restart local p2    # "message":Landroid/nfc/NdefMessage;
    .restart local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .restart local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    :catchall_1
    move-exception v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "tag":Landroid/nfc/Tag;
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    .end local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .end local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v7    # "tag":Landroid/nfc/Tag;
    .restart local v8    # "message":Landroid/nfc/NdefMessage;
    .restart local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 1102
    .end local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .end local v7    # "tag":Landroid/nfc/Tag;
    .end local v8    # "message":Landroid/nfc/NdefMessage;
    .end local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .restart local p1    # "tag":Landroid/nfc/Tag;
    .restart local p2    # "message":Landroid/nfc/NdefMessage;
    .restart local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .restart local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    :catch_1
    move-exception v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    move-object p1, v0

    .line 1103
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    .end local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .end local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v7    # "tag":Landroid/nfc/Tag;
    .restart local v8    # "message":Landroid/nfc/NdefMessage;
    .restart local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .local p1, "exception":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .end local v2    # "identity":J
    .end local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .end local v7    # "tag":Landroid/nfc/Tag;
    .end local v8    # "message":Landroid/nfc/NdefMessage;
    .end local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p5    # "ex":Ljava/util/concurrent/Executor;
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1105
    .end local p1    # "exception":Ljava/lang/RuntimeException;
    .restart local v2    # "identity":J
    .restart local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v7    # "tag":Landroid/nfc/Tag;
    .restart local v8    # "message":Landroid/nfc/NdefMessage;
    .restart local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .restart local p5    # "ex":Ljava/util/concurrent/Executor;
    :goto_1
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    nop

    .end local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .end local v7    # "tag":Landroid/nfc/Tag;
    .end local v8    # "message":Landroid/nfc/NdefMessage;
    .end local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .end local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .end local p5    # "ex":Ljava/util/concurrent/Executor;
    throw p1

    .line 1107
    .end local v2    # "identity":J
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .local p1, "tag":Landroid/nfc/Tag;
    .restart local p2    # "message":Landroid/nfc/NdefMessage;
    .restart local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .restart local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local p5    # "ex":Ljava/util/concurrent/Executor;
    :catchall_2
    move-exception v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "tag":Landroid/nfc/Tag;
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    .end local p3    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    .end local p4    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v6    # "cb":Landroid/nfc/NfcOemExtension$Callback;
    .restart local v7    # "tag":Landroid/nfc/Tag;
    .restart local v8    # "message":Landroid/nfc/NdefMessage;
    .restart local v9    # "hasOemExecutableContent":Landroid/os/ResultReceiver;
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_2
.end method

.method private synthetic blacklist lambda$onNdefRead$9(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1005
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p1}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1006
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda47;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda47;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1005
    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onReaderOptionChanged$26(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1076
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda42;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda42;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRfDiscoveryStarted$3(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isDiscoveryStarted"    # Z
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 974
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda43;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda43;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRfFieldDetected$2(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isActive"    # Z
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 967
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda53;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRoutingChangeCompleted$23(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "input"    # Ljava/lang/Object;

    .line 1065
    invoke-interface {p0}, Landroid/nfc/NfcOemExtension$Callback;->onRoutingChangeCompleted()V

    return-void
.end method

.method private synthetic blacklist lambda$onRoutingChangeCompleted$24(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "ex"    # Ljava/util/concurrent/Executor;

    .line 1065
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda17;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRoutingChanged$22(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1059
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p1}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1060
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda10;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1059
    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRoutingTableFull$27(Landroid/nfc/NfcOemExtension$Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p1, "input"    # Ljava/lang/Object;

    .line 1082
    invoke-interface {p0}, Landroid/nfc/NfcOemExtension$Callback;->onRoutingTableFull()V

    return-void
.end method

.method private synthetic blacklist lambda$onRoutingTableFull$28(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "ex"    # Ljava/util/concurrent/Executor;

    .line 1081
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda33;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStateUpdated$7(ILandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 993
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda54;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda54;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTagConnected$0(ZLandroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "connected"    # Z
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 953
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda21;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda21;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTagDispatch$21(Landroid/os/ResultReceiver;Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .param p2, "cb"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p3, "ex"    # Ljava/util/concurrent/Executor;

    .line 1053
    new-instance v0, Landroid/nfc/NfcOemExtension$ReceiverWrapper;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-direct {v0, v1, p1}, Landroid/nfc/NfcOemExtension$ReceiverWrapper;-><init>(Landroid/nfc/NfcOemExtension;Landroid/os/ResultReceiver;)V

    .line 1054
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda41;

    invoke-direct {v1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda41;-><init>(Landroid/nfc/NfcOemExtension$Callback;)V

    .line 1053
    invoke-direct {p0, v0, v1, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->handleVoidCallback(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onApplyRouting(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda49;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1001
    return-void
.end method

.method public blacklist onBootFinished(I)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda46;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1039
    return-void
.end method

.method public blacklist onBootStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda27;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1024
    return-void
.end method

.method public blacklist onCardEmulationActivated(Z)V
    .locals 2
    .param p1, "isActivated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0, p1}, Landroid/nfc/NfcOemExtension;->-$$Nest$fputmCardEmulationActivated(Landroid/nfc/NfcOemExtension;Z)V

    .line 959
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda55;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 961
    return-void
.end method

.method public blacklist onDisable(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "isAllowed"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda59;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1019
    return-void
.end method

.method public blacklist onDisableFinished(I)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda45;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1049
    return-void
.end method

.method public blacklist onDisableStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda13;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1034
    return-void
.end method

.method public blacklist onEeListenActivated(Z)V
    .locals 2
    .param p1, "isActivated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0, p1}, Landroid/nfc/NfcOemExtension;->-$$Nest$fputmEeListenActivated(Landroid/nfc/NfcOemExtension;Z)V

    .line 980
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda6;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 982
    return-void
.end method

.method public blacklist onEeUpdated()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda35;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 988
    return-void
.end method

.method public blacklist onEnable(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "isAllowed"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda36;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1013
    return-void
.end method

.method public blacklist onEnableFinished(I)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda30;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1044
    return-void
.end method

.method public blacklist onEnableStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda5;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1029
    return-void
.end method

.method public blacklist onExtractOemPackages(Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "packageConsumer"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda31;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1151
    return-void
.end method

.method public blacklist onGetOemAppSearchIntent(Ljava/util/List;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p2, "intentConsumer"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda58;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Ljava/util/List;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1091
    return-void
.end method

.method public blacklist onHceEventReceived(I)V
    .locals 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda16;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1071
    return-void
.end method

.method public blacklist onLaunchHceAppChooserActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 7
    .param p1, "selectedAid"    # Ljava/lang/String;
    .param p3, "failedComponent"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda15;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "selectedAid":Ljava/lang/String;
    .end local p2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local p3    # "failedComponent":Landroid/content/ComponentName;
    .end local p4    # "category":Ljava/lang/String;
    .local v3, "selectedAid":Ljava/lang/String;
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v5, "failedComponent":Landroid/content/ComponentName;
    .local v6, "category":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda15;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1129
    return-void
.end method

.method public blacklist onLaunchHceTapAgainActivity(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, p1, p2}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda52;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1136
    return-void
.end method

.method public blacklist onLogEventNotified(Landroid/nfc/OemLogItems;)V
    .locals 2
    .param p1, "item"    # Landroid/nfc/OemLogItems;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda29;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/OemLogItems;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1142
    return-void
.end method

.method public blacklist onNdefMessage(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "hasOemExecutableContent"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda2;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1109
    return-void
.end method

.method public blacklist onNdefRead(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda50;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1007
    return-void
.end method

.method public blacklist onReaderOptionChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda34;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1077
    return-void
.end method

.method public blacklist onRfDiscoveryStarted(Z)V
    .locals 2
    .param p1, "isDiscoveryStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0, p1}, Landroid/nfc/NfcOemExtension;->-$$Nest$fputmRfDiscoveryStarted(Landroid/nfc/NfcOemExtension;Z)V

    .line 973
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda7;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 975
    return-void
.end method

.method public blacklist onRfFieldDetected(Z)V
    .locals 2
    .param p1, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0, p1}, Landroid/nfc/NfcOemExtension;->-$$Nest$fputmRfFieldActivated(Landroid/nfc/NfcOemExtension;Z)V

    .line 966
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda25;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 968
    return-void
.end method

.method public blacklist onRoutingChangeCompleted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda48;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1066
    return-void
.end method

.method public blacklist onRoutingChanged(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda24;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1061
    return-void
.end method

.method public blacklist onRoutingTableFull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda12;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1083
    return-void
.end method

.method public blacklist onStateUpdated(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda14;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 994
    return-void
.end method

.method public blacklist onTagConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda19;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Z)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 954
    return-void
.end method

.method public blacklist onTagDispatch(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "isSkipped"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;->this$0:Landroid/nfc/NfcOemExtension;

    invoke-static {v0}, Landroid/nfc/NfcOemExtension;->-$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback$$ExternalSyntheticLambda22;-><init>(Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1055
    return-void
.end method
