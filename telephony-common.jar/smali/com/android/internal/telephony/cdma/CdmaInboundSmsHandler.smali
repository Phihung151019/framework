.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;,
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;,
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TEST_MODE:Z

.field private static blacklist sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

.field private static blacklist sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;


# instance fields
.field private final blacklist mCheckForDuplicatePortsInOmadmWapPush:Z

.field private blacklist mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

.field private blacklist mLastAcknowledgedSmsFingerprint:[B

.field private blacklist mLastDispatchedSmsFingerprint:[B

.field private blacklist mScpCallback:Landroid/os/RemoteCallback;

.field private final blacklist mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method public static synthetic blacklist $r8$lambda$xF1PfoMtOh-W2AA_rWjfSHH77sI(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->lambda$new$0(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScpCallback(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Landroid/os/RemoteCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 100
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->TEST_MODE:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 7

    .line 112
    const-string v1, "CdmaInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 96
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110165

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 113
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 115
    new-instance p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    .line 117
    iget-object p0, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object p0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->enable()V

    .line 120
    new-instance p0, Landroid/os/RemoteCallback;

    new-instance p1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    invoke-direct {p0, p1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object p0, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    .line 173
    sget-boolean p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->TEST_MODE:Z

    if-eqz p0, :cond_1

    .line 174
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    const/4 p1, 0x2

    if-nez p0, :cond_0

    .line 175
    new-instance p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    .line 176
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string p2, "com.android.internal.telephony.cdma.TEST_TRIGGER_CELL_BROADCAST"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaCbTestBroadcastReceiver;

    invoke-virtual {v2, p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 181
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    if-nez p0, :cond_1

    .line 182
    new-instance p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    .line 183
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    const-string p2, "com.android.internal.telephony.cdma.TEST_TRIGGER_SCP_MESSAGE"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    sget-object p2, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sTestScpBroadcastReceiver:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CdmaScpTestBroadcastReceiver;

    invoke-virtual {v2, p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method static synthetic blacklist access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)[B
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->decodeHexString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$800(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/CellBroadcastServiceManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method private blacklist addVoicemailSmsToMetrics(II)V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingVoiceMailSms(ILjava/lang/String;)V

    .line 780
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsVoicemail(ZII)V

    return-void
.end method

.method private static blacklist checkDuplicatePortOmadmWapPush([BI)Z
    .locals 3

    add-int/lit8 p1, p1, 0x4

    .line 752
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 753
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    new-instance p0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    const/4 p1, 0x2

    .line 759
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v0, p1

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object p0

    .line 771
    const-string p1, "application/vnd.syncml.notification"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;I)V
    .locals 6

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    .line 634
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessagePriority()I

    move-result v1

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v2

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voicemail count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    if-gez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x63

    if-le v2, v3, :cond_1

    move v2, v3

    .line 648
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CdmaInboundSmsHandler"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM prev : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM priority : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vm_count_key_cdma"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 656
    const-string v3, "vm_priority_key_cdma"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 661
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->updateVoicemailCount(I)V

    .line 663
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getPduLength(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addVoicemailSmsToMetrics(II)V

    :cond_2
    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    .line 122
    const-string p1, "SCP results error: missing extras"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    const-string v0, "sender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    const-string p1, "SCP results error: missing sender extra."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_1
    const-string v1, "results"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    .line 132
    const-string p1, "SCP results error: missing results extra."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v2, 0x2

    .line 137
    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 139
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 140
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p1

    .line 142
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 143
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x1006

    .line 145
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 147
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 150
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 151
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 152
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 153
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 157
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 158
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 159
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 160
    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 161
    array-length v0, p1

    invoke-virtual {v2, p1, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    :try_start_2
    const-string v0, "exception creating SCP results PDU"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 171
    :catch_2
    throw p0
.end method

.method public static blacklist makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 7

    .line 208
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->start()V

    return-object v0
.end method

.method private blacklist processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 682
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 684
    const-string v1, "Received a WAP SMS which is not WDP. Discard."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v4

    .line 687
    :cond_0
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    .line 688
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    if-lt v6, v5, :cond_1

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WDP bad segment #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expecting 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 v4, 0x3

    if-nez v6, :cond_4

    .line 700
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v7, 0x4

    .line 701
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    const/4 v7, 0x5

    .line 702
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x6

    .line 703
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 708
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110165

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    const/4 v9, 0x7

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 709
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v8

    const-string v10, "sms_check_duplicate_port_omadm_wappush"

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 711
    :cond_2
    invoke-static {v1, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0xb

    move v11, v7

    goto :goto_0

    :cond_3
    move v11, v7

    move v8, v9

    goto :goto_0

    :cond_4
    move v11, v2

    move v8, v4

    move v4, v11

    .line 718
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WAP PDU. Type = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", originator = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", src-port = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dst-port = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ID = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", segment# = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 723
    array-length v3, v1

    sub-int/2addr v3, v8

    new-array v3, v3, [B

    .line 724
    array-length v4, v1

    sub-int/2addr v4, v8

    invoke-static {v1, v8, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 725
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    const-class v4, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 726
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    iget-object v7, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 729
    invoke-static {v3}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 731
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v21

    const/4 v12, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v14, p4

    move-wide/from16 v9, p5

    move/from16 v22, p7

    move-object v8, v3

    move/from16 v17, v5

    move/from16 v16, v6

    move-object v6, v1

    .line 726
    invoke-virtual/range {v6 .. v22}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    .line 735
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0
.end method

.method private static blacklist resultToCause(I)I
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 p0, 0x27

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x23

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected blacklist acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result p2

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez p2, :cond_1

    .line 599
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 601
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    return-void
.end method

.method protected blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 235
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    return v0

    .line 239
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 241
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 243
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_1

    .line 247
    const-string v0, "Broadcast type message"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 248
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v7

    .line 253
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 257
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    sget-boolean v8, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v8, :cond_2

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pdu : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " | Encoding : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageEncoding()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 263
    const-string v8, " | da : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "(?<=.{2}).(?=.{2})"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz v5, :cond_4

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_4
    iget-object v5, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering SMS information : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    const-string v9, "CdmaInboundSmsHandler"

    invoke-virtual {v5, v9, v6, v8}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 274
    iget-object v6, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v6, :cond_5

    .line 275
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    return v7

    .line 282
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v5

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "teleService : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v6, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v6

    const/16 v8, 0x1004

    const/16 v10, 0x1002

    if-nez v6, :cond_6

    if-eq v5, v10, :cond_6

    if-eq v5, v8, :cond_6

    .line 287
    const-string v0, "Tablet doesn\'t support WMT and WAP messages"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    const/16 v6, 0x1092

    if-ne v5, v6, :cond_7

    .line 292
    const-string v0, "DCN Delivery report is received"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    const/4 v6, 0x4

    const v12, 0xfdf1

    const v13, 0xfdea

    .line 296
    const-string v14, "sms_wap_push_format_sms"

    const-string v15, "LGU"

    const/high16 v3, 0x40000

    const/16 v16, 0x2

    const-string v11, "1"

    if-eq v5, v13, :cond_c

    const v10, 0xfded

    if-eq v5, v10, :cond_9

    if-eq v5, v12, :cond_9

    if-eq v5, v3, :cond_b

    packed-switch v5, :pswitch_data_0

    .line 350
    iget-object v10, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_0

    .line 353
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported teleservice 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 355
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CISH_dispatchMessageRadioSpecific_Unsupported"

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v6

    .line 324
    :pswitch_0
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mScpCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->sendCdmaScpMessageToHandler(Lcom/android/internal/telephony/cdma/SmsMessage;Landroid/os/RemoteCallback;)V

    return v7

    :cond_9
    :goto_0
    :pswitch_1
    move/from16 v10, p2

    goto :goto_1

    .line 313
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 314
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    if-nez v0, :cond_a

    return v16

    .line 317
    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v7

    .line 300
    :cond_b
    :pswitch_3
    iget-object v10, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    move/from16 v10, p2

    .line 302
    invoke-direct {v1, v2, v10}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;I)V

    return v7

    :cond_c
    move/from16 v10, p2

    .line 328
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 329
    const-string v3, "handle SmsEnvelope.TELESERVICE_WAP_CTC"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->preprocessCdmaFdeaWap()Z

    move-result v3

    if-nez v3, :cond_e

    return v7

    :cond_e
    move v5, v8

    .line 360
    :goto_1
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_f

    .line 361
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v3, v4, :cond_f

    .line 366
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "CISH_dispatchMessageRadioSpecific_OutOfMemory"

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x3

    return v0

    :cond_f
    if-ne v8, v5, :cond_10

    .line 375
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v5

    .line 375
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 381
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v0

    iget v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 382
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move-object v2, v0

    move v8, v10

    .line 381
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I

    move-result v0

    return v0

    .line 387
    :cond_10
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-ne v13, v5, :cond_14

    .line 391
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    .line 391
    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 396
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;-><init>([B)V

    .line 397
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    .line 400
    const-string v4, "CTC Push Message Decoding"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/16 v4, 0x14

    .line 422
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    const/16 v4, 0x8

    .line 423
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v5
    :try_end_0
    .catch Lcom/android/internal/telephony/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1

    shl-int/2addr v5, v4

    .line 424
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    or-int/2addr v5, v8

    .line 425
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CTC Wap Push Reference Id:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v6

    if-eq v6, v7, :cond_11

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ERR] CTC Wap Push ID is wrong! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_4

    .line 448
    :cond_11
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v6

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTCPush]length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v7, 0x5

    .line 450
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 452
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v7

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CTC Wap Push num_fileds: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    add-int/lit8 v6, v6, -0x2

    if-ge v7, v6, :cond_12

    .line 458
    const-string v7, "[ERR] CTC Wap Push num_fileds is set wrong!"

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    move v7, v6

    .line 462
    :cond_12
    new-array v3, v7, [B

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_13

    .line 464
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v3, v6
    :try_end_1
    .catch Lcom/android/internal/telephony/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 467
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BearerData decode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    move v5, v4

    .line 471
    :cond_13
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object v6, v2

    move-object v2, v3

    move v3, v5

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move/from16 v8, p2

    .line 470
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;JI)I

    move-result v0

    return v0

    :cond_14
    move-object v6, v2

    .line 474
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-ne v12, v5, :cond_16

    .line 476
    const-string v0, "CTC DM Message Decoding"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseCtcFota()V

    .line 478
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCtcFota()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 479
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v18

    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v21

    .line 480
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v28

    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v30

    const/16 v23, 0xb84

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v29, 0x0

    move/from16 v31, p2

    move-object/from16 v19, v0

    .line 479
    invoke-virtual/range {v18 .. v31}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    const/4 v2, 0x0

    .line 481
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0

    :cond_15
    return v7

    :cond_16
    const/4 v2, 0x0

    .line 488
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->checkIfVVMReceiver()Z

    move-result v3

    .line 490
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    iget-object v8, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    const-string v10, "CarrierFeature_Common_SupportHuxAppDirectedSms"

    invoke-virtual {v4, v8, v10, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v2, 0x1002

    if-eq v5, v2, :cond_18

    :cond_17
    if-eqz v3, :cond_1c

    .line 492
    :cond_18
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 494
    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_1c

    .line 497
    :cond_19
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 499
    sget-object v3, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    iget-object v4, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/AppDirectedSMS;->checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v3

    goto :goto_5

    :cond_1a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_1c

    .line 501
    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappdirsmsstatus()Z

    move-result v2

    if-ne v7, v2, :cond_1c

    .line 502
    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->checkifcomponentpresent()Z

    move-result v0

    if-ne v7, v0, :cond_1b

    .line 503
    const-string v0, "[DirectedSMS] Dispatch App Directed SMS message"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getcomponentnameDirectedSms()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappMsgBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getAppPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 507
    :cond_1b
    const-string v0, "[DirectedSMS] matched package not found or not a valid format"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 513
    :cond_1c
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsConfig;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x1003

    const/16 v3, 0x1002

    if-eq v5, v3, :cond_1d

    const/16 v3, 0x1005

    if-eq v5, v3, :cond_1d

    if-eq v5, v2, :cond_1d

    const/high16 v3, 0x40000

    if-eq v5, v3, :cond_1e

    const/16 v3, 0x1001

    if-eq v5, v3, :cond_1d

    const v3, 0xc00e

    if-eq v5, v3, :cond_1d

    const v3, 0xc00f

    if-eq v5, v3, :cond_1d

    const v3, 0xc010

    if-eq v5, v3, :cond_1d

    const v3, 0xc263

    if-eq v5, v3, :cond_1d

    const v3, 0xc265

    if-eq v5, v3, :cond_1d

    const v3, 0xc267

    if-eq v5, v3, :cond_1d

    const v3, 0xc00a

    if-eq v5, v3, :cond_1d

    .line 526
    iget-object v2, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;II)V

    return v7

    :cond_1d
    const/high16 v3, 0x40000

    :cond_1e
    if-eq v5, v3, :cond_1f

    if-ne v5, v2, :cond_20

    .line 529
    :cond_1f
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v2

    if-nez v2, :cond_20

    .line 530
    const-string v0, "Received voice SMS with count 0"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return v7

    .line 539
    :cond_20
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .line 541
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v12

    .line 541
    invoke-virtual {v3, v4, v12, v13}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 543
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v2, :cond_21

    .line 545
    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v4, :cond_21

    const/16 v5, 0xb84

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v5, v4, :cond_21

    goto :goto_7

    .line 547
    :cond_21
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v5, 0x17

    const-string v8, "CISH_dispatchMessageRadioSpecific_MdmDiscard"

    if-eqz v4, :cond_22

    .line 548
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v11, v8, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    .line 552
    :cond_22
    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v12

    .line 553
    invoke-virtual {v12}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 555
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v14

    .line 556
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x1

    const/16 v17, 0x0

    .line 555
    invoke-virtual/range {v12 .. v19}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 558
    :catch_2
    const-string v0, "fail to store blocked sms on mdm database"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 561
    :goto_6
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsHQMAgent:Lcom/android/internal/telephony/SmsHQMAgent;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v11, v8, v1}, Lcom/android/internal/telephony/SmsHQMAgent;->sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    .line 568
    :cond_23
    :goto_7
    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v3

    const-string v4, "VZW_US:CCT"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SmsConfig;->isMnoName([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    if-eqz v2, :cond_24

    .line 569
    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_24

    const/16 v3, 0x2454

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v3, v2, :cond_24

    const-string v2, "20868"

    .line 570
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 571
    const-string v0, "Comcast SIM Unlock message"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->parseOTAUnlockMessage(Ljava/lang/String;)V

    return v7

    .line 577
    :cond_24
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist getEncoding()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method protected blacklist getFormat()Ljava/lang/String;
    .locals 0

    .line 934
    const-string p0, "3gpp2"

    return-object p0
.end method

.method protected blacklist handleBlockedSms([BI)V
    .locals 1

    .line 923
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 924
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchBlockedSms([BI)V

    :cond_0
    return-void
.end method

.method protected blacklist handleSatelliteEvent(Landroid/os/Message;)V
    .locals 0

    .line 959
    const-string p0, "CdmaInboundSmsHandler"

    const-string p1, "handleSatelliteEvent is not used in CdmaInboundSmsHandler"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist is3gpp2()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    const-string p0, "CdmaInboundSmsHandler"

    const-string p1, "Duplicate found. Samsung"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 948
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist onQuitting()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 198
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 199
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method

.method protected blacklist onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 903
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method protected blacklist removeDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->removeMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    const/4 p0, 0x1

    return p0
.end method
