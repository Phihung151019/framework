.class public Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;
.super Ljava/lang/Object;
.source "SemNitzStateMachineImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/NitzStateMachine;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemNitzStateMachineImpl"

.field private static blacklist mMCCSettingAlertDialog:Landroid/app/AlertDialog;

.field private static blacklist mNeedMultiTimezonePopup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mPrevNitzIso:Ljava/lang/String;


# instance fields
.field private blacklist mAutoTimeZoneSettingChangedObserver:Landroid/database/ContentObserver;

.field private blacklist mCountryIsoCode:Ljava/lang/String;

.field private blacklist mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastNitzSignalCleared:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzSignal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastRegisteredIso:Ljava/lang/String;

.field private blacklist mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

.field private blacklist mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRetryCnt:I

.field private blacklist mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

.field private blacklist mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountryIsoCode(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mRetryCnt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mRetryCnt:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareMultiTimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->prepareMultiTimezonePopup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowMultitimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->showMultitimezonePopup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmNeedMultiTimezonePopup()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmPrevNitzIso()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmPrevNitzIso(Ljava/lang/String;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mRetryCnt:I

    .line 83
    new-instance v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    .line 403
    new-instance v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mAutoTimeZoneSettingChangedObserver:Landroid/database/ContentObserver;

    .line 128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 129
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 130
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    iput-object p3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    .line 131
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    iput-object p4, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    .line 132
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    .line 134
    :goto_0
    sget-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 135
    sget-object p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    .line 163
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    const-string p3, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string p3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object p3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p3, p1, p2, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "auto_time_zone"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mAutoTimeZoneSettingChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 367
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 366
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;->getTimeZoneSuggestion(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p2

    .line 369
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDetectedTimezone - timezond id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 373
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDetectedTimezone - qualified timezone detected. mNeedMultiTimezonePopup["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 382
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastRegisteredIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const-string v0, "TIMEZONE: close multi timezone popup"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 387
    sput-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "multi_time_zone_popup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss popup, currentIso:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tz:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", quality:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 394
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 395
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setTimezoneId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 398
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkDetectedTimezone exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->loge(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private blacklist checkIfNeedAutoTimePopupForKor()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "auto_time"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->isUserConfigAllowed()Z

    move-result v2

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMEZONE: countryChanged or boot time. userConfigAllowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTimeZoneDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isTimeDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPrevNitzIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", iso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 271
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private blacklist clearNetworkState(Z)Z
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setLastNitzSignal(Lcom/android/internal/telephony/NitzSignal;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 342
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    goto :goto_0

    .line 344
    :cond_1
    new-instance p1, Landroid/os/TimestampedValue;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 345
    invoke-interface {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->elapsedRealtimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {p1, v2, v3, v4}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 348
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 349
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    return v1
.end method

.method public static blacklist createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;
    .locals 6

    .line 116
    new-instance v2, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    move-result-object v3

    .line 118
    new-instance v4, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;

    new-instance v0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-direct {v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;-><init>()V

    invoke-direct {v4, v2, v0}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;-><init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;)V

    .line 120
    new-instance v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;)V

    return-object v0
.end method

.method private blacklist doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    return-void
.end method

.method private blacklist getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 3

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/time/TimeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeManager;

    invoke-virtual {v0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeZoneCapabilitiesAndConfig exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist isGeoDetectionEnabled()Z
    .locals 5

    const/4 v0, 0x0

    .line 414
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v2

    .line 416
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v1

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGeoDetectionEnabled: geoDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", configureGeoDetectionEnabledCapability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return v0

    .line 422
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGeoDetectionEnabled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist isUserConfigAllowed()Z
    .locals 4

    const/4 v0, 0x0

    .line 572
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v1

    .line 573
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserConfigAllowed: ConfigureAutoDetectionEnabledCapability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserConfigAllowed exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final blacklist log(Ljava/lang/String;)V
    .locals 3

    .line 593
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;)V
    .locals 3

    .line 597
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist prepareMultiTimezonePopup()V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 441
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 445
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 446
    const-string v0, "TIMEZONE: already found timezone or user checked"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCombinedRegStateMobileData(Landroid/telephony/ServiceState;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    const-string v0, "TIMEZONE: out of service or limited"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 458
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 459
    const-string v0, "TIMEZONE: currently satellite network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 463
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 464
    const-string v0, "TIMEZONE: Setup Wizard doesn\'t finish"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 468
    :cond_6
    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 469
    const-string v0, "TIMEZONE: Boot not completed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 473
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8

    .line 474
    const-string v1, "TIMEZONE: Auto timezone is disabled, so telephony doesn\'t prepare for multi timezone popup"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 475
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    return-void

    .line 479
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->isGeoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 480
    const-string v0, "TIMEZONE: working with GeoDetection Timezone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 484
    :cond_9
    const-string v0, "TIMEZONE: popup timer start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 431
    :cond_a
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMEZONE: timezone empty or used for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist restoreNetworkStateAndRerunDetection()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 318
    invoke-virtual {v2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 320
    invoke-interface {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzNetworkDisconnectRetentionMillis()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzSignal;

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->runDetection()V

    :cond_1
    return-void
.end method

.method private blacklist runDetection()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkDetectedTimezone(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    return-void
.end method

.method private blacklist setSemNitzTimeProps(Lcom/android/internal/telephony/NitzSignal;)V
    .locals 2

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->nitz_time(Ljava/lang/Long;)V

    .line 278
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->nitz_time_elapsed_time(Ljava/lang/Long;)V

    return-void
.end method

.method private blacklist showMultitimezonePopup()V
    .locals 7

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "TIMEZONE: countryIsoCode is cleared"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show popup, curruntIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    .line 498
    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 500
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 502
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 503
    const-string v0, "TIMEZONE: already found timezone or user checked"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    const-string v0, "TIMEZONE: already multi timezone popup showing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_4
    const-string v2, "TIMEZONE: Show multi timezone popup"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "multi_time_zone_popup"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 514
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 517
    iget-object v3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 518
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v1

    .line 520
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v2, :cond_6

    const/4 v6, 0x4

    goto :goto_3

    :cond_6
    const/4 v6, 0x5

    .line 521
    :goto_3
    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v3, :cond_7

    const v5, 0x104080e

    .line 523
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const v5, 0x1040d40

    .line 524
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    if-eqz v3, :cond_8

    const v3, 0x1040c95

    .line 525
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    const v3, 0x1040618

    .line 526
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    const/high16 v6, 0x1040000

    .line 527
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_9

    const v2, 0x1080bdc

    goto :goto_6

    :cond_9
    const v2, 0x1080bdd

    .line 529
    :goto_6
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040d41

    .line 530
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 532
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 533
    new-instance v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$4;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$4;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Landroid/content/res/Resources;)V

    invoke-virtual {v4, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    new-instance v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$5;-><init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    invoke-virtual {v4, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    .line 566
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 567
    sget-object p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public blacklist dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dumpState(Ljava/io/PrintWriter;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->dumpState(Ljava/io/PrintWriter;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SemNitzStateMachineImpl.mNeedMultiTimezonePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SemNitzStateMachineImpl.mLastRegisteredIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  SemNitzStateMachineImpl.mPrevNitzIso="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPrevNitzIso:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist handleAirplaneModeChanged(Z)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleAirplaneModeChanged(Z)V

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 287
    iput-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->clearNetworkState(Z)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 292
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->runDetection()V

    return-void
.end method

.method public blacklist handleCountryDetected(Ljava/lang/String;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleCountryDetected(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 205
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->prepareMultiTimezonePopup()V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCountryDetected: countryIsoCode Changed, mNeedMultiTimezonePopup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 211
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNeedMultiTimezonePopup:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", oldCountryIsoCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mLastRegisteredIso= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastRegisteredIso:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->log(Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    :cond_1
    return-void
.end method

.method public blacklist handleCountryUnavailable()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleCountryUnavailable()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;)V

    return-void
.end method

.method public blacklist handleNetworkAvailable()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleNetworkAvailable()V

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->prepareMultiTimezonePopup()V

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->restoreNetworkStateAndRerunDetection()V

    return-void
.end method

.method public blacklist handleNetworkUnavailable()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleNetworkUnavailable()V

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->clearNetworkState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->runDetection()V

    :cond_0
    return-void
.end method

.method public blacklist handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mStateMachineImpl:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;->mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->runDetection()V

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->setLastNitzSignal(Lcom/android/internal/telephony/NitzSignal;)V

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->checkIfNeedAutoTimePopupForKor()V

    .line 253
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->setSemNitzTimeProps(Lcom/android/internal/telephony/NitzSignal;)V

    return-void
.end method
