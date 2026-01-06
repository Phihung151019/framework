.class Lcom/sec/epdg/EpdgManager$1;
.super Lcom/sec/epdg/IEpdgHandoverListener$Stub;
.source "EpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 32
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 33
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgAvailable(III)V

    .line 34
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 50
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 51
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgDeregister(I)V

    .line 52
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 80
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 81
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverEnableChanged(IZ)V

    .line 82
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 39
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V

    .line 40
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public onEpdgIpSecConnectionResultDelay(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 86
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 87
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpSecConnectionResultDelay(ILjava/lang/String;Z)V

    .line 88
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 56
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 57
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V

    .line 58
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 63
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V

    .line 64
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 44
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 45
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgRegister(IZ)V

    .line 46
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 74
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 75
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgReleaseCall(I)V

    .line 76
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 68
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$1;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 69
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgShowPopup(II)V

    .line 70
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
