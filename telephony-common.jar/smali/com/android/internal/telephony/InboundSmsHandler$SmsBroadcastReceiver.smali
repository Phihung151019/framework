.class public final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private blacklist mBroadcastTimeMillis:J

.field private final greylist-max-r mDeleteWhere:Ljava/lang/String;

.field private final greylist-max-r mDeleteWhereArgs:[Ljava/lang/String;

.field private final blacklist mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field private blacklist mIsBlockedNumber:Z

.field public blacklist mWaitingForIntent:Landroid/content/Intent;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInboundSmsTracker(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2643
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2644
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    .line 2645
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 2646
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    return-void
.end method

.method private blacklist completeBroadcast()V
    .locals 4

    .line 2797
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdeleteFromRawTable(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 2798
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    .line 2799
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$200(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 2800
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private declared-synchronized blacklist handleAction(Landroid/content/Intent;Z)V
    .locals 14

    monitor-enter p0

    .line 2677
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2678
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_2

    .line 2688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeMillis:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    const/16 v3, 0x1388

    if-lt v2, v3, :cond_1

    .line 2690
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow ordered broadcast completion time for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 2693
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ordered broadcast completed for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2698
    :cond_2
    :goto_0
    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2701
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v6, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v2, v4, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2702
    invoke-static {v0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->isNameIdAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2703
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    invoke-static {v0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->wasAborted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2704
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    goto :goto_1

    .line 2707
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    .line 2709
    invoke-static {}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getLastOptions()Landroid/os/Bundle;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, p0

    .line 2707
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    monitor-exit p0

    return-void

    .line 2715
    :cond_4
    :goto_1
    :try_start_1
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 2720
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mIsBlockedNumber:Z

    if-eqz v0, :cond_5

    .line 2721
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "Deleteing blocked SMS message."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2722
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->completeBroadcast()V

    goto/16 :goto_3

    .line 2725
    :cond_5
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    .line 2728
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2729
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v2, 0x0

    invoke-static {v0, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mhandleSmsWhitelisting(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 2733
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    .line 2734
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    goto/16 :goto_3

    .line 2738
    :cond_6
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2740
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mIsBlockedNumber:Z

    if-eqz v0, :cond_7

    .line 2741
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "Deleteing blocked Wap Push message."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2742
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->completeBroadcast()V

    goto/16 :goto_3

    .line 2745
    :cond_7
    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2746
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2749
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 2750
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms-broadcast"

    const/4 v4, 0x2

    const/16 v6, 0x13b

    .line 2749
    invoke-virtual {v2, v0, v4, v6, v3}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v9

    .line 2754
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    .line 2755
    const-string v13, ""

    const/4 v11, 0x0

    const/16 v12, 0x13b

    invoke-virtual/range {v8 .. v13}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2759
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 2761
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 2763
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    move-object v2, v0

    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v3, v2

    .line 2765
    invoke-static {v3}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2766
    invoke-static {v3}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmUserManager(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/UserManager;

    move-result-object v6

    .line 2767
    invoke-virtual {v6}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v5, p0

    move-object v1, p1

    .line 2765
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    goto :goto_3

    .line 2776
    :cond_8
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 2777
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 2778
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.sec.unifiedwfc.action.WAP_PUSH_SL"

    .line 2779
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2780
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected BroadcastReceiver action: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_9
    if-eqz p2, :cond_b

    .line 2784
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    if-eq v0, v3, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 2786
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a broadcast receiver set the result code to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deleting from raw table anyway!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2789
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "successful broadcast, deleting from raw table."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2792
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->completeBroadcast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2794
    :goto_3
    monitor-exit p0

    return-void

    .line 2680
    :cond_c
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAction: Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when expecting "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    if-nez v0, :cond_d

    const-string v0, "none"

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 2682
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 2680
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2684
    monitor-exit p0

    return-void

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist fakeNextAction()V
    .locals 4

    .line 2655
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fakeNextAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 2657
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 2656
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    .line 2658
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->handleAction(Landroid/content/Intent;Z)V

    return-void

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 2661
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    .line 2660
    const-string p0, "fakeNextAction: mWaitingForIntent is null"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    .line 2668
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: received null intent, faking "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 2669
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 2668
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2672
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->handleAction(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected blacklist setBlockedNumber(Z)V
    .locals 0

    .line 2804
    iput-boolean p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mIsBlockedNumber:Z

    return-void
.end method

.method public declared-synchronized blacklist setWaitingForIntent(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    .line 2637
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    .line 2638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeMillis:J

    .line 2639
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$100(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 2640
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    sget v1, Lcom/android/internal/telephony/InboundSmsHandler;->sTimeoutDurationMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2641
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
