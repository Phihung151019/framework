.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;
.super Lcom/android/internal/telephony/State;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Lcom/android/internal/telephony/CellBroadcastConfigTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .locals 7

    .line 209
    invoke-super {p0}, Lcom/android/internal/telephony/State;->enter()V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetisNeedUpdate3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string v3, "IdleState: isNeedUpdate3gpp is true"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$300(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fputisNeedUpdate3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Z)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellBroadcastIdRange;

    .line 215
    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v3

    iget-object v6, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetclient(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRangeWithClient(IILjava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v3

    iget-object v6, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetclient(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRangeWithClient(IILjava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetisNeedUpdate3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string v2, "IdleState isNeedUpdate3gpp2 is true"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$400(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fputisNeedUpdate3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastIdRange;

    .line 226
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastIdRange;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetclient(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRangeWithClient(IILjava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastIdRange;->getStartId()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastIdRange;->getEndId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetclient(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRangeWithClient(IILjava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$500(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 242
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 244
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IdleState handle EVENT_REQUEST with request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$600(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mCbRanges3gpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mCbRanges3gpp2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp2(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmCbRanges3gpp(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->get3gppRanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->get3gppRanges()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$msetGsmConfig(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/util/List;Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->-$$Nest$fgetmGsmConfiguringState(Lcom/android/internal/telephony/CellBroadcastConfigTracker;)Lcom/android/internal/telephony/CellBroadcastConfigTracker$GsmConfiguringState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$IdleState;->this$0:Lcom/android/internal/telephony/CellBroadcastConfigTracker;

    const-string v0, "Do nothing as the requested ranges are same as now"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->access$700(Lcom/android/internal/telephony/CellBroadcastConfigTracker;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->getCallback()Ljava/util/function/Consumer;

    move-result-object p0

    .line 264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 263
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return v1
.end method
