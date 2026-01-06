.class public Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist ACTION_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ICCID_AVAILABLE_INTERNAL"

.field public static final greylist ACTION_RCS_MSG_FILE_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

.field public static final greylist ACTION_RCS_MSG_FILE_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

.field public static final greylist ACTION_RCS_MSG_FILE_THUMBNAIL_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

.field public static final greylist ACTION_RCS_MSG_TEXT_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

.field public static final greylist ACTION_RCS_MSG_TEXT_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

.field public static final greylist BODY:Ljava/lang/String; = "body"

.field public static final greylist CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final greylist ERROR_DATABASE_OPERATION:I = -0x4

.field public static final greylist ERROR_INVALID_INPUT:I = -0x1

.field public static final greylist ERROR_NONE:I = 0x0

.field public static final greylist ERROR_NOT_SUPPORTED:I = -0x3

.field public static final greylist ERROR_SIM_NOT_INSERTED:I = 0xd

.field public static final greylist ERROR_SIM_PIN_ALREADY_LOCKED:I = 0x4

.field public static final greylist ERROR_SIM_PIN_ALREADY_LOCKED_BY_ADMIN:I = 0xb

.field public static final greylist ERROR_SIM_PIN_ALREADY_UNLOCKED:I = 0x5

.field public static final greylist ERROR_SIM_PIN_BLOCKED_BY_PUK:I = 0x6

.field public static final greylist ERROR_SIM_PIN_DATABASE:I = 0xa

.field public static final greylist ERROR_SIM_PIN_FAILED:I = 0x1

.field public static final greylist ERROR_SIM_PIN_ID_NOT_READY:I = 0x9

.field public static final greylist ERROR_SIM_PIN_INCORRECT_CODE:I = 0x3

.field public static final greylist ERROR_SIM_PIN_INVALID_CODE:I = 0x2

.field public static final greylist ERROR_SIM_PIN_MAX_RETRIES_EXCEEDED:I = 0x8

.field public static final greylist ERROR_SIM_PIN_NONE:I = 0x0

.field public static final greylist ERROR_SIM_PIN_OWNED_BY_OTHER_ADMIN:I = 0xc

.field public static final greylist ERROR_SIM_PIN_UNKNOWN:I = 0x64

.field public static final greylist ERROR_UNKNOWN:I = -0x2

.field public static final greylist EXTRA_MSG_ID:Ljava/lang/String; = "id"

.field public static final greylist EXTRA_SIM_PIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SIM_PIN_INTERNAL"

.field public static final greylist FILE_PATH:Ljava/lang/String; = "file-path"

.field public static final greylist LIMIT_NUMBER_OF_CALLS_BY_DAY:I = 0x0

.field public static final greylist LIMIT_NUMBER_OF_CALLS_BY_MONTH:I = 0x2

.field public static final greylist LIMIT_NUMBER_OF_CALLS_BY_WEEK:I = 0x1

.field public static final greylist LIMIT_NUMBER_OF_DATA_CALLS_BY_DAY:I = 0x0

.field public static final greylist LIMIT_NUMBER_OF_DATA_CALLS_BY_MONTH:I = 0x2

.field public static final greylist LIMIT_NUMBER_OF_DATA_CALLS_BY_WEEK:I = 0x1

.field public static final greylist LIMIT_NUMBER_OF_SMS_BY_DAY:I = 0x0

.field public static final greylist LIMIT_NUMBER_OF_SMS_BY_MONTH:I = 0x2

.field public static final greylist LIMIT_NUMBER_OF_SMS_BY_WEEK:I = 0x1

.field public static final greylist METHOD_NOT_COMPATIBLE_WITH_SIM_SPECIFICATION:Ljava/lang/String; = "This method does not support iccId being specified by administrator."

.field public static final greylist OP_DATA_ALLOWED:I = 0x1

.field public static final greylist OP_INCOMING_CALL_ALLOWED:I = 0x2

.field public static final greylist OP_INCOMING_SMS_ALLOWED:I = 0x4

.field public static final greylist OP_MMS_ALLOWED:I = 0x6

.field public static final greylist OP_OUTGOING_CALL_ALLOWED:I = 0x3

.field public static final greylist OP_OUTGOING_SMS_ALLOWED:I = 0x5

.field public static final greylist PERMISSION_NOTIFY_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NOTIFY_ICCID_AVAILABLE_INTERNAL"

.field public static final greylist RCS_FEATURE_ALL:I = 0x1

.field public static final greylist REMOTE_URI:Ljava/lang/String; = "remote-uri"

.field public static final greylist SENDER_ALIAS:Ljava/lang/String; = "sender-alias"

.field public static final greylist SIM_SLOT_0:I = 0x0

.field public static final greylist SIM_SLOT_1:I = 0x1

.field public static final greylist SUCCESS:I = 0x0

.field public static greylist TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field public static final greylist THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail-path"

.field public static final greylist TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field public greylist mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public greylist mIccId:Ljava/lang/String;

.field public greylist mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist addIncomingCallExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed addIncomingCallExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist addIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addIncomingSmsExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed addIncomingSmsExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist addIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addIncomingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addNumberOfIncomingCalls()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addNumberOfIncomingSms()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addNumberOfOutgoingCalls()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addNumberOfOutgoingSms()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addOutgoingCallExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed addOutgoingCallExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist addOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist addOutgoingSmsExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed addOutgoingSmsExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.addOutgoingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist allowCallerIDDisplay(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowCallerIDDisplay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to block caller id display "

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist allowCopyContactToSim(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowCopyContactToSim"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowCopyContactToSim(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with security policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist allowDataNetworkFromSimSlot(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowDataNetworkFromSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowDataNetworkFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist allowIncomingCallFromSimSlot(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowIncomingCallFromSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist allowIncomingMms(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowIncomingMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to set incoming MMS"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowIncomingSms(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowIncomingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to set incoming SMS"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowIncomingSmsFromSimSlot(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowIncomingSmsFromSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist allowMmsFromSimSlot(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowMmsFromSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowMmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist allowOutgoingCallFromSimSlot(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowOutgoingCallFromSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist allowOutgoingMms(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowOutgoingMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to set outgoing MMS"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowOutgoingSms(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowOutgoingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to set outgoing SMS"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist allowOutgoingSmsFromSimSlot(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowOutgoingSmsFromSimSlot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist allowWapPush(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.allowWapPush"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowWapPush(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to allow wap push"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist blockMmsWithStorage(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.blockMmsWithStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->blockMmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to block MMS with storage"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist blockSmsWithStorage(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.blockSmsWithStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->blockSmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to block SMS with storage"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist canIncomingCall(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist canIncomingSms(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist canOutgoingCall(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist canOutgoingSms(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist changeSimPinCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.changeSimPinCode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->changeSimPinCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed changeSimPinCode"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method public greylist checkDataCallLimit()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to checkDataCallLimit"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist checkEnableUseOfPacketData(Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to checkEnableUseOfPacketData"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist clearStoredBlockedMms()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.clearStoredBlockedMms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->clearStoredBlockedMms(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to clear stored blocked mms"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist clearStoredBlockedSms()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.clearStoredBlockedSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->clearStoredBlockedSms(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to clear stored blocked sms"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist decreaseNumberOfOutgoingSms()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist disableSimPinLock(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.disableSimPinLock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, p1, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed disableSimPinLock"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method public greylist enableLimitNumberOfCalls(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.enableLimitNumberOfCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->enableLimitNumberOfCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist enableLimitNumberOfSms(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.enableLimitNumberOfSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->enableLimitNumberOfSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist enableSimPinLock(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.enableSimPinLock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-interface {v1, v2, p0, p1, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed enableSimPinLock"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method public greylist getDataCallLimitEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to getDataCallLimitEnabled"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist getDisclaimerText()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed getDisclaimerText"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getEmergencyCallOnly(Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist getIncomingCallExceptionPatterns()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed getIncomingCallExceptionPatterns"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getIncomingCallRestriction(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getIncomingSmsExceptionPatterns()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed getIncomingSmsExceptionPatterns"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLimitOfDataCalls(I)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to getLimitOfDataCalls"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public greylist getLimitOfIncomingCalls(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getLimitOfIncomingSms(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getLimitOfOutgoingCalls(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getLimitOfOutgoingSms(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getOutgoingCallExceptionPatterns()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed getOutgoingCallExceptionPatterns"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOutgoingCallRestriction(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOutgoingSmsExceptionPatterns()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed getOutgoingSmsExceptionPatterns"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed getPinCode"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public greylist getRCSMessage(J)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getRCSMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.getRCSMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getRCSMessage(Lcom/samsung/android/knox/ContextInfo;J)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed getRCSMessage"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final greylist getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method does not support iccId being specified by administrator."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    if-nez p1, :cond_2

    const-string p1, "phone_restriction_policy"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    return-object p0
.end method

.method public greylist isBlockMmsWithStorageEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get status of block MMS with storage"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist isBlockSmsWithStorageEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get status of block SMS with storage"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist isCallerIDDisplayAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed getting caller id display status"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isCopyContactToSimAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with security policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isDataAllowedFromSimSlot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isIncomingCallAllowedFromSimSlot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isIncomingMmsAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get incoming MMS status"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isIncomingSmsAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get incoming SMS status"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isIncomingSmsAllowedFromSimSlot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isLimitNumberOfCallsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist isLimitNumberOfSmsEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isMmsAllowedFromSimSlot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isOutgoingMmsAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get outgoing MMS"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isOutgoingSmsAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get outgoing SMS"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isOutgoingSmsAllowedFromSimSlot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isRCSEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with phone restriction policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isRCSEnabled(II)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, v0, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed isSimLockedByAdmin"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isWapPushAllowed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get status of allow wap push"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist removeIncomingCallExceptionPattern()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed removeIncomingCallExceptionPattern"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist removeIncomingCallRestriction()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist removeIncomingSmsExceptionPattern()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed removeIncomingSmsExceptionPattern"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist removeIncomingSmsRestriction()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeIncomingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist removeOutgoingCallExceptionPattern()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed removeOutgoingCallExceptionPattern"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist removeOutgoingCallRestriction()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist removeOutgoingSmsExceptionPattern()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed removeOutgoingSmsExceptionPattern"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist removeOutgoingSmsRestriction()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.removeOutgoingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist resetCallsCount()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.resetCallsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist resetDataCallLimitCounter()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.resetDataCallLimitCounter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed to resetDataCallLimitCounter"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist resetSmsCount()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.resetSmsCount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setDataCallLimitEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setDataCallLimitEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to setDataCallLimitEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist setDisclaimerText(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setDisclaimerText"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setDisclaimerText(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setDisclaimerText"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist setEmergencyCallOnly(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setEmergencyCallOnly"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setIncomingCallExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setIncomingCallExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist setIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setIncomingSmsExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setIncomingSmsExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist setIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setIncomingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setLimitOfDataCalls(JJJ)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfDataCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;JJJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to setLimitOfDataCalls"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public greylist setLimitOfIncomingCalls(III)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfIncomingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setLimitOfIncomingSms(III)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfIncomingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setLimitOfOutgoingCalls(III)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfOutgoingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setLimitOfOutgoingSms(III)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setLimitOfOutgoingSms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setOutgoingCallExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingCallExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setOutgoingCallExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist setOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingCallRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setOutgoingSmsExceptionPattern(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setOutgoingSmsExceptionPattern"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public greylist setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setOutgoingSmsRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public greylist setRCSEnabled(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setRCSEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist setRCSEnabled(IZI)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "PhoneRestrictionPolicy.setRCSEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with phone restriction policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public greylist updateDataLimitState()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->updateDataLimitState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with phone restriction policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public greylist updateDateAndDataCallCounters(J)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed talking with phone restriction policy"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
