.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;
.super Landroid/os/Handler;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlogl(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 601
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 673
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    return-void

    .line 603
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 604
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 605
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v2, 0x0

    aget p1, p1, v2

    .line 606
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v3

    .line 607
    iget-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<EVENT_CARD_SWAPED> SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cardSwapCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v6}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isOnetrayCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlogl(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    const/4 v4, 0x6

    if-eqz p1, :cond_8

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v5, :cond_8

    if-eq p1, v6, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 665
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmAllSimOffCheck(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Z)V

    return-void

    .line 613
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v7, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmAllSimOffCheck(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Z)V

    .line 615
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$sfgetSUPPORTED_MODEM_COUNT()I

    move-result v7

    if-le v7, v1, :cond_5

    if-eqz v3, :cond_5

    .line 616
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v3, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    .line 617
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)I

    move-result v3

    if-ge v3, v5, :cond_3

    .line 618
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$sfgetSUPPORTED_MODEM_COUNT()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 619
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    :cond_4
    if-ne p1, v6, :cond_7

    .line 625
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v1, p1, v2

    .line 626
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mupdateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    return-void

    :cond_5
    if-ne p1, v1, :cond_6

    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v4, v2, v3

    :cond_6
    if-ne p1, v6, :cond_7

    .line 632
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget p1, p1, v2

    if-ne p1, v4, :cond_7

    .line 633
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v1, p1, v2

    .line 634
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mupdateSubscription(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    :cond_7
    :goto_1
    return-void

    .line 640
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$sfgetSUPPORTED_MODEM_COUNT()I

    move-result v5

    if-le v5, v1, :cond_c

    if-eqz v3, :cond_c

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fputmCardSwapCount(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V

    move v0, v2

    .line 642
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$sfgetSUPPORTED_MODEM_COUNT()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 643
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eq v3, v1, :cond_b

    .line 644
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aget v3, v3, v0

    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aget v3, v3, v0

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const-string v5, "handleMessage"

    .line 646
    invoke-static {v3, v5, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$misActiveSlot(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez p1, :cond_a

    .line 647
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aget v3, v3, v0

    if-eqz v3, :cond_b

    .line 648
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aput v2, v3, v0

    goto :goto_3

    .line 651
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object v3

    aput v4, v3, v0

    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 656
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[I

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v1, p1, v0

    .line 659
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0x112

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 661
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$3;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmIccid(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
