.class Lcom/samsung/android/mcf/McfBleAdapterImpl$2;
.super Ljava/lang/Object;
.source "McfBleAdapterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/BleScanner;


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

    .line 243
    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilterBundles(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;
    .locals 5
    .param p2, "settings"    # Lcom/samsung/android/mcf/ble/BleScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 284
    .local p1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v0, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v1, v1, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFilterBundles"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 287
    .local v2, "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    invoke-static {}, Lcom/samsung/android/mcf/common/VersionUtil;->getBuildSDKVersion()I

    move-result v3

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->isOnlyIrkFilter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-virtual {p2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getTimeout()I

    move-result v3

    const/16 v4, 0x7530

    if-gt v3, v4, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Scan with only Irk filter can not run more than 30 secs"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v2    # "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_0

    .line 293
    :cond_2
    return-object v0
.end method


# virtual methods
.method public startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .locals 5
    .param p3, "settings"    # Lcom/samsung/android/mcf/ble/BleScanSettings;
    .param p4, "callback"    # Lcom/samsung/android/mcf/ble/BleScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            ")Z"
        }
    .end annotation

    .line 248
    .local p1, "screenOnFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    .local p2, "screenOffFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    .line 249
    .local v0, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
    const-string v1, "startScan"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v3, v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - already started"

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return v2

    .line 253
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 254
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v3, v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v4, "Ignore - both(screenOn/ScreenOff) filters are null"

    invoke-static {v3, v1, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return v2

    .line 258
    :cond_1
    new-instance v1, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    invoke-direct {v1, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V

    .line 259
    .end local v0    # "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
    .local v1, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 264
    const-string v3, "bleScanOnFilter"

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->getFilterBundles(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 267
    :cond_2
    if-eqz p2, :cond_3

    .line 268
    const-string v3, "bleScanOffFilter"

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->getFilterBundles(Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 271
    :cond_3
    invoke-virtual {p3, v0}, Lcom/samsung/android/mcf/ble/BleScanSettings;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 272
    const-string v3, "bleScanCallback"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    iget-object v3, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 v4, 0x192

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->sendMessage(ILandroid/os/Bundle;)I

    move-result v3

    .line 274
    .local v3, "ret":I
    if-eqz v3, :cond_4

    .line 275
    iget-object v4, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v4}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return v2

    .line 278
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;

    .line 299
    .local v0, "wrapper":Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
    const-string v1, "stopScan"

    if-nez v0, :cond_0

    .line 300
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v2, v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, "Ignore - not started"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    iget-object v2, v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "bleScanCallback"

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 308
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;->this$0:Lcom/samsung/android/mcf/McfBleAdapterImpl;

    const/16 v3, 0x193

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->sendMessage(ILandroid/os/Bundle;)I

    .line 309
    const/4 v2, 0x1

    return v2
.end method
