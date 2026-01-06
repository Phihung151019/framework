.class public Lcom/google/uwb/support/oemextension/SessionStatus;
.super Ljava/lang/Object;
.source "SessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    }
.end annotation


# static fields
.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final PROTOCOL_NAME:Ljava/lang/String; = "protocol_name"

.field public static final REASON_CODE:Ljava/lang/String; = "reason_code"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SESSION_TOKEN:Ljava/lang/String; = "session_token"

.field public static final STATE:Ljava/lang/String; = "state"


# instance fields
.field private final mAppPackageName:Ljava/lang/String;

.field private final mProtocolName:Ljava/lang/String;

.field private final mReasonCode:I

.field private final mSessionId:J

.field private final mSessionToken:I

.field private final mState:I


# direct methods
.method private constructor <init>(JIILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # J
    .param p3, "state"    # I
    .param p4, "reasonCode"    # I
    .param p5, "appPackageName"    # Ljava/lang/String;
    .param p6, "sessionToken"    # I
    .param p7, "protocolName"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mSessionId:J

    .line 80
    iput p3, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mState:I

    .line 81
    iput p4, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mReasonCode:I

    .line 82
    iput-object p5, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mAppPackageName:Ljava/lang/String;

    .line 83
    iput p6, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mSessionToken:I

    .line 84
    iput-object p7, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mProtocolName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(JIILjava/lang/String;ILjava/lang/String;Lcom/google/uwb/support/oemextension/SessionStatus$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # I
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Lcom/google/uwb/support/oemextension/SessionStatus$1;

    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/google/uwb/support/oemextension/SessionStatus;-><init>(JIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionStatus;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 100
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/oemextension/SessionStatus;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionStatus;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionStatus;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 109
    new-instance v0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;-><init>()V

    .line 110
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->setSessionId(J)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    move-result-object v0

    .line 111
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->setState(I)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    move-result-object v0

    .line 112
    const-string v1, "reason_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->setReasonCode(I)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    move-result-object v0

    .line 113
    const-string v1, "app_package_name"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->setAppPackageName(Ljava/lang/String;)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    move-result-object v0

    .line 114
    const-string v1, "session_token"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->setSessiontoken(I)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    move-result-object v0

    .line 115
    const-string v1, "protocol_name"

    const-string v2, "UnknownProtocolName"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->setProtocolName(Ljava/lang/String;)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->build()Lcom/google/uwb/support/oemextension/SessionStatus;

    move-result-object v0

    .line 109
    return-object v0
.end method


# virtual methods
.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mProtocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mReasonCode:I

    return v0
.end method

.method public getSessionId()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mSessionId:J

    return-wide v0
.end method

.method public getSessionToken()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mSessionToken:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mState:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 88
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/oemextension/SessionStatus;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v1, "session_id"

    iget-wide v2, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mSessionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v1, "state"

    iget v2, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v1, "reason_code"

    iget v2, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mReasonCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "session_token"

    iget v2, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mSessionToken:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v1, "protocol_name"

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/SessionStatus;->mProtocolName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v0
.end method
