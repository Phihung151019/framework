.class Lcom/samsung/android/mcf/McfBleAdapterImpl$1;
.super Ljava/lang/Object;
.source "McfBleAdapterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/BleAdvertiser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfBleAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/McfBleAdapterImpl;

    .line 176
    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .locals 7
    .param p1, "settings"    # Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
    .param p2, "advertiseData"    # Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .param p3, "responseData"    # Lcom/samsung/android/mcf/ble/BleAdvertiseData;
    .param p4, "callback"    # Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    .line 181
    .local v0, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
    const-string v1, "startAdvertise"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 182
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v3, v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - already started"

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return v2

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v3}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 187
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v3, v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - too many advertise(5) is working. stop some advertise."

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v2

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->isConnectable()Z

    move-result v3

    .line 192
    .local v3, "isConnectable":Z
    iget-object v4, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v4, p2, v3}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$100(Lcom/samsung/android/mcf/McfBleAdapterImpl;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 196
    iget-object v4, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v4, p3, v2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$100(Lcom/samsung/android/mcf/McfBleAdapterImpl;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result v4

    if-gt v4, v5, :cond_6

    .line 200
    sget-boolean v4, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getTimeout()I

    move-result v4

    const v5, 0x36ee80

    if-gt v4, v5, :cond_2

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getTimeout()I

    move-result v4

    if-nez v4, :cond_3

    .line 202
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const-string v5, "Advertise-Timout is set too long, please check it again"

    invoke-virtual {v4, v5}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->showDebugToast(Ljava/lang/String;)V

    .line 205
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v4, v4, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v1, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    invoke-direct {v1, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)V

    .line 207
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
    .local v1, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 211
    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 212
    const/4 v4, 0x1

    if-eqz p3, :cond_4

    .line 213
    invoke-virtual {p3, v0, v4}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 215
    :cond_4
    const-string v5, "bleAdvCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    iget-object v5, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 v6, 0x190

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v5

    .line 217
    .local v5, "ret":I
    if-eqz v5, :cond_5

    .line 218
    iget-object v4, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v4}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return v2

    .line 221
    :cond_5
    return v4

    .line 197
    .end local v1    # "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
    .end local v5    # "ret":I
    .local v0, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy scan response data too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy advertising data too big"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 227
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;

    .line 228
    .local v0, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
    const-string v1, "stopAdvertise"

    if-nez v0, :cond_0

    .line 229
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v2, v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not started"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x0

    return v1

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v2, v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bleAdvCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 238
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 v3, 0x191

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->sendMessage(ILandroid/os/Bundle;)I

    .line 239
    const/4 v2, 0x1

    return v2
.end method
