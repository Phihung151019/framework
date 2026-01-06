.class Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/nsd/NsdManager$ServiceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->getServiceInfoCallback()Landroid/net/nsd/NsdManager$ServiceInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceInfoCallbackRegistrationFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onServiceInfoCallback, failed "

    .line 8
    .line 9
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fputmServiceInfoCallback(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onServiceInfoCallbackUnregistered()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdHotspotListener(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Landroid/net/nsd/NsdServiceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->onResolveStopped(Landroid/net/nsd/NsdServiceInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onServiceLost()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onServiceLost"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Landroid/net/nsd/NsdServiceInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdHotspotListener(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Landroid/net/nsd/NsdServiceInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->onLost(Landroid/net/nsd/NsdServiceInfo;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->stopResolveService()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onServiceUpdated(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onServiceUpdated"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fputmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;Landroid/net/nsd/NsdServiceInfo;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Landroid/net/nsd/NsdServiceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHostAddresses()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdHotspotListener(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData$1;->this$0:Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;->-$$Nest$fgetmNsdServiceInfo(Lcom/samsung/android/server/wifi/ap/nsd/NsdResolveData;)Landroid/net/nsd/NsdServiceInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/ap/nsd/NsdHotspot;->onResolved(Landroid/net/nsd/NsdServiceInfo;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method
