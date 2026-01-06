.class Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->initializeDiscoveryListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onDiscoveryStarted:"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fputisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onDiscoveryStopped:"

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fputisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mclearAll(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onServiceFound:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "HotspotDeviceNameService"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mregisterServiceInfoCallback(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Landroid/net/nsd/NsdServiceInfo;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onServiceLost:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mstopResolveService(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Landroid/net/nsd/NsdServiceInfo;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onStartDiscoveryFailed:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fputisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "onStopDiscoveryFailed:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$fputisDiscoveryStarted(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;Z)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot$2;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->-$$Nest$mclearAll(Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
