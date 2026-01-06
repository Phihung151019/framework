.class Lcom/android/internal/telephony/uicc/UiccProfile$5;
.super Landroid/os/Handler;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmDisposed(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result v1

    const-string v2, "handleMessage: Received "

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    .line 423
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after dispose(); ignoring the message"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 428
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v3, :cond_1b

    const/16 v3, 0xc9

    if-eq v1, v3, :cond_18

    const-string v3, "skip mNetworkLockedRegistrants.notifyRegistrants()"

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/4 v7, 0x4

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const-string v2, "UiccProfile"

    const-string v3, "mAlreadyReadEcc set false"

    packed-switch v1, :pswitch_data_4

    .line 754
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 732
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccCard(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v1, "Received EVENT_UICC_APPS_ENABLEMENT_STATUS_CHANGED of pSIM"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 738
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_2

    .line 739
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 740
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d

    .line 742
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mcallHandleSimEcc(Lcom/android/internal/telephony/uicc/UiccProfile;ILjava/lang/String;)V

    .line 743
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mAlreadyReadEcc:Z

    return-void

    .line 747
    :cond_2
    const-string p0, "Error on UICC Apps enablement status changed"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 716
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v1, "Received EVENT_SIM_REFRESH"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 717
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_3

    .line 718
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 719
    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 720
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne p1, v5, :cond_d

    .line 721
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mcallHandleSimEcc(Lcom/android/internal/telephony/uicc/UiccProfile;ILjava/lang/String;)V

    .line 722
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 723
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mAlreadyReadEcc:Z

    return-void

    .line 726
    :cond_3
    const-string p0, "Error on SIM Refresh"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 661
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 662
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 663
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sim password with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 665
    :cond_4
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 666
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 646
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 647
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmDesiredSimPersoLocked(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, v8}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmDesiredSimPersoLocked(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CHANGE_FACILITY_SIM_PERSO_DONE: mPersoSimLock= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error change facility lock with exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 654
    :goto_0
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 655
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 640
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 641
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$monQueryFacilitySimPerso(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)V

    return-void

    .line 622
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 623
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_d

    .line 624
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 625
    check-cast p1, [B

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_PERSO_STATUS_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 627
    aget-byte p1, p1, v8

    if-ne p1, v7, :cond_6

    .line 628
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    return-void

    .line 630
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0, v8}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPersoSimLock(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    return-void

    .line 633
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p1, "EVENT_GET_PERSO_STATUS_COMPLETE ar.result null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 474
    :pswitch_6
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 475
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "skip mPersoLockedRegistrants.notifyRegistrants()"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_1

    .line 477
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPersoLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 479
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 465
    :pswitch_7
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 466
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "skip mServicePoviderLockedRegistrants.notifyRegistrants()"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_2

    .line 468
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmServicePoviderLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 470
    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 456
    :pswitch_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_3

    .line 459
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkSubsetLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 461
    :goto_3
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 612
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 613
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_d

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmOPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 615
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_QUERY_OPLMNWACT_DONE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmOPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 603
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 604
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_d

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmFPLMN(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 606
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_QUERY_FPLMN_DONE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmFPLMN(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 594
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 595
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_d

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 597
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_QUERY_PLMNWACT_DONE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPLMNwAct(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 577
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 578
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 579
    aget-byte v0, p1, v8

    if-ne v0, v5, :cond_d

    .line 580
    aget-byte p1, p1, v4

    if-ne p1, v7, :cond_b

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "EVENT_SAP_NOTIFICATION - SAP_CARD_STATUS_INSERTED : SIM state is changed to UNKNOWN by SAP connection"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 582
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$msetExternalState(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void

    :cond_b
    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    if-ne p1, v5, :cond_d

    .line 585
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "EVENT_SAP_NOTIFICATION - REMOVED or NOT_ACCESSIBLE"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 586
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    :cond_d
    :goto_4
    return-void

    .line 554
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 555
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v1, "An error occurred during internal PIN verification"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPinStorage(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/PinStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V

    .line 560
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto :goto_5

    .line 562
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Internal PIN verification was successful!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 568
    :goto_5
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_f

    goto :goto_6

    :cond_f
    move v5, v4

    :goto_6
    const/16 p0, 0x150

    .line 566
    invoke-static {p0, v5, v4}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(III)V

    return-void

    .line 544
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_10

    .line 545
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    goto :goto_7

    .line 547
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    .line 550
    :goto_7
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->refresh()V

    return-void

    .line 510
    :pswitch_f
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 511
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleSimCountryIsoOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    return-void

    .line 497
    :pswitch_10
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$sfgetVDBG()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "handleMessage: EVENT_CARRIER_PRIVILEGES_LOADED"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 498
    :cond_11
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->onUiccAccessRulesLoaded()V

    .line 505
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$monCarrierPrivilegesLoadedMessage(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 522
    :pswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 525
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 526
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: Error in SIM access with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    move v4, v5

    .line 530
    :cond_13
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 531
    check-cast v2, Landroid/os/Message;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 532
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    move v5, v4

    goto :goto_8

    .line 534
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: ar.userObj is null in event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", failed to post status back to caller"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 538
    :goto_8
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mupdateSimApiAttempts(Lcom/android/internal/telephony/uicc/UiccProfile;II)V

    return-void

    .line 432
    :pswitch_12
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misSupportSsu(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 433
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_9

    .line 435
    :cond_15
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 436
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v6, v3, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 436
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_9

    .line 439
    :cond_16
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v1, "EVENT_NETWORK_LOCKED or EVENT_REGIONAL_LOCKED: mUiccApplication is NULL, mNetworkLockedRegistrants not notified."

    invoke-static {p1, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 450
    :goto_9
    :pswitch_13
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$sfgetVDBG()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 451
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 695
    :cond_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 697
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_19

    .line 698
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Failed to get Ecc List from 3GPP2"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_a

    .line 701
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mread2GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 705
    :goto_a
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$misValidSimStateForGetEccListFromSim(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 707
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mcallHandleSimEcc(Lcom/android/internal/telephony/uicc/UiccProfile;ILjava/lang/String;)V

    .line 708
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile;->mAlreadyReadEcc:Z

    return-void

    .line 710
    :cond_1a
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Ecc list Done in : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmExternalState(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    return-void

    .line 673
    :cond_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 675
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1c

    .line 676
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Failed to get Ecc List from 3GPP, try to re-read from 3GPP2"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    goto :goto_c

    .line 682
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 683
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1d

    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mread2GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p1

    goto :goto_b

    .line 686
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mread3GEccList(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 688
    :goto_b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmEmergencyNumber(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 690
    :goto_c
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccProfile;->getEccListFromSim(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x12c
        :pswitch_11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
