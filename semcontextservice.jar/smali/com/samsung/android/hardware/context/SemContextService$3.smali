.class Lcom/samsung/android/hardware/context/SemContextService$3;
.super Landroid/app/IUidObserver$Stub;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/SemContextService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1473
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextService$3;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1485
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$3;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmUidIdleList(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1486
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 1499
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1480
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$3;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmUidIdleList(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1481
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 1489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1490
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$3;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmUidIdleList(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1491
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$3;->this$0:Lcom/samsung/android/hardware/context/SemContextService;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextService;->-$$Nest$fgetmUidIdleList(Lcom/samsung/android/hardware/context/SemContextService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_0
    return-void
.end method

.method public onUidProcAdjChanged(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "adj"    # I

    .line 1496
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 1476
    return-void
.end method
