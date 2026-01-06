.class public final Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;
.super Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter$Stub;
.source "SamsungExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/SamsungExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UwbExtrasAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/SamsungExtension;


# direct methods
.method public static synthetic $r8$lambda$wNmIVi8EvM40y4JHBCBDxdP5JQI(Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->lambda$registerSecUwbCallback$0()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/SamsungExtension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-direct {p0}, Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$registerSecUwbCallback$0()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmVendorExtensionWrapper(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->unregisterSessionNotificationCallback(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fputmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;Lcom/samsung/android/uwb_extras/ISecUwbCallback;)V

    .line 381
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$mdump(Lcom/samsung/android/server/uwb/SamsungExtension;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public enableConformanceTest(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .line 308
    const-string v0, "UwbSamsungExtension"

    const-string v1, "Deprecated"

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, -0x1

    return v0
.end method

.method public enableDebugOption(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 303
    const-string v0, "UwbSamsungExtension"

    const-string v1, "Deprecated"

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public registerSecUwbCallback(Lcom/samsung/android/uwb_extras/ISecUwbCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmContext(Lcom/samsung/android/server/uwb/SamsungExtension;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    move-result-object v0

    const-string v1, "UwbSamsungExtension"

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "unregisterSessionNotificationCallback"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmVendorExtensionWrapper(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->unregisterSessionNotificationCallback(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0, p1}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fputmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;Lcom/samsung/android/uwb_extras/ISecUwbCallback;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    new-instance v2, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;)V

    invoke-static {v0, v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fputmSessionNotification(Lcom/samsung/android/server/uwb/SamsungExtension;Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmVendorExtensionWrapper(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    move-result-object v2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->registerSessionNotificationCallback(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;)V

    .line 378
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/uwb_extras/ISecUwbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to link to vendor service death event."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public sendUciMessage(II[B)[B
    .locals 3
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "data"    # [B

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmContext(Lcom/samsung/android/server/uwb/SamsungExtension;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "sendUciMessage()"

    const-string v1, "UwbSamsungExtension"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$misUwbEnabled(Lcom/samsung/android/server/uwb/SamsungExtension;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const-string v0, "Device is not initialized"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v0

    return-object v0
.end method
