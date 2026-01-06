.class Lcom/sec/epdg/EpdgManager$2;
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

    .line 93
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 96
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 97
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgAvailable(III)V

    .line 98
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 114
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 115
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgDeregister(I)V

    .line 116
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 144
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 145
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverEnableChanged(IZ)V

    .line 146
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 103
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V

    .line 104
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public onEpdgIpSecConnectionResultDelay(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 150
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 151
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpSecConnectionResultDelay(ILjava/lang/String;Z)V

    .line 152
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 120
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 121
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V

    .line 122
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 127
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V

    .line 128
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 108
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 109
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgRegister(IZ)V

    .line 110
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 138
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 139
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgReleaseCall(I)V

    .line 140
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 132
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$2;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

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

    .line 133
    .local v1, "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    invoke-virtual {v1, p1, p2}, Lcom/sec/epdg/EpdgManager$EpdgListener;->onEpdgShowPopup(II)V

    .line 134
    .end local v1    # "listener":Lcom/sec/epdg/EpdgManager$EpdgListener;
    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method
