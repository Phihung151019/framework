.class Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;
.super Ljava/lang/Object;
.source "UwbVendorExtensionWrapper.java"

# interfaces
.implements Landroid/uwb/UwbManager$UwbVendorUciCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->initializeCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVendorUciNotification(II[B)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVendorUciNotification - GID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbVendorExtensionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmDeviceNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;->onVendorUciNotificationReceived(II[B)V

    .line 167
    return-void
.end method

.method public onVendorUciResponse(II[B)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 156
    const-string v0, "UwbVendorExtensionWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVendorUciResponse - GID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmUciWaitObj(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmUciWaitObj(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->setPayload([B)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmUciWaitObj(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->blockingNotify()V

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
