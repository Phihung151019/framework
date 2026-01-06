.class Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;
.super Ljava/lang/Object;
.source "UwbVendorExtensionWrapper.java"

# interfaces
.implements Landroid/uwb/UwbManager$UwbOemExtensionCallback;


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

    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSessionStatusNotificationReceived$0(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "sessionNotification"    # Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    .param p1, "sessionStatusBundle"    # Landroid/os/PersistableBundle;

    .line 102
    invoke-interface {p0, p1}, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;->onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public onCheckPointedTarget(Landroid/os/PersistableBundle;)Z
    .locals 2
    .param p1, "advertisePointedTargetBundle"    # Landroid/os/PersistableBundle;

    .line 148
    const-string v0, "UwbVendorExtensionWrapper"

    const-string v1, "onCheckPointedTarget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmAdvertiseNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;->onCheckPointedTarget(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method

.method public onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "deviceStatusBundle"    # Landroid/os/PersistableBundle;

    .line 108
    const-string v0, "UwbVendorExtensionWrapper"

    const-string v1, "onDeviceNotificationReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p1}, Lcom/google/uwb/support/oemextension/DeviceStatus;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/DeviceStatus;

    move-result-object v0

    .line 110
    .local v0, "deviceStatus":Lcom/google/uwb/support/oemextension/DeviceStatus;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmDeviceNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/DeviceStatus;->getDeviceState()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;->onDeviceNotificationReceived(I)V

    .line 111
    return-void
.end method

.method public onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .locals 4
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 132
    const-string v0, "onRangingReportReceived"

    const-string v1, "UwbVendorExtensionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v0

    .line 135
    .local v0, "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawNtfData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->getRawNtfData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;->onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    .end local v0    # "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    return-object p1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NullPointerException;
    return-object p1
.end method

.method public onSessionConfigurationComplete(Landroid/os/PersistableBundle;)I
    .locals 3
    .param p1, "openSessionBundle"    # Landroid/os/PersistableBundle;

    .line 116
    const-string v0, "UwbVendorExtensionWrapper"

    const-string v1, "onSessionConfigurationComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;->onSessionConfigurationChanged(Landroid/os/PersistableBundle;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmSessionNotificationMap(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 121
    .local v2, "sessionNotification":Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    if-nez v2, :cond_0

    .line 122
    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;->onSessionConfigurationChanged(Landroid/os/PersistableBundle;)V

    .line 125
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "sessionNotification":Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "sessionStatusBundle"    # Landroid/os/PersistableBundle;

    .line 91
    const-string v0, "UwbVendorExtensionWrapper"

    const-string v1, "onSessionStatusNotificationReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;->onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;->this$0:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->-$$Nest$fgetmSessionNotificationMap(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 96
    .local v2, "sessionNotification":Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 98
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    new-instance v4, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Landroid/os/PersistableBundle;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "sessionNotification":Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 104
    :cond_2
    return-void
.end method
