.class public Lcom/google/uwb/support/oemextension/SessionConfigParams;
.super Ljava/lang/Object;
.source "SessionConfigParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final OPEN_SESSION_PARAMS_BUNDLE:Ljava/lang/String; = "open_session_params_bundle"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SESSION_TOKEN:Ljava/lang/String; = "session_token"


# instance fields
.field private final mFiraOpenSessionParamsBundle:Landroid/os/PersistableBundle;

.field private final mSessionId:J

.field private final mSessionToken:I


# direct methods
.method public constructor <init>(JILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "sessionId"    # J
    .param p3, "sessionToken"    # I
    .param p4, "firaOpenSessionParamsBundle"    # Landroid/os/PersistableBundle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mSessionId:J

    .line 46
    iput p3, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mSessionToken:I

    .line 47
    iput-object p4, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mFiraOpenSessionParamsBundle:Landroid/os/PersistableBundle;

    .line 48
    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionConfigParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 80
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/oemextension/SessionConfigParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionConfigParams;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static isSessionConfigParams(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 76
    const-string v0, "open_session_params_bundle"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionConfigParams;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 89
    new-instance v0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;-><init>()V

    .line 90
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->setSessionId(J)Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;

    move-result-object v0

    .line 91
    const-string v1, "session_token"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->setSessiontoken(I)Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;

    move-result-object v0

    .line 92
    const-string v1, "open_session_params_bundle"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->setOpenSessionParamsBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->build()Lcom/google/uwb/support/oemextension/SessionConfigParams;

    move-result-object v0

    .line 89
    return-object v0
.end method


# virtual methods
.method public getFiraOpenSessionParamsBundle()Landroid/os/PersistableBundle;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mFiraOpenSessionParamsBundle:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mSessionId:J

    return-wide v0
.end method

.method public getSessionToken()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mSessionToken:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 67
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 68
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/oemextension/SessionConfigParams;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "session_id"

    iget-wide v2, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mSessionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 70
    const-string v1, "session_token"

    iget v2, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mSessionToken:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v1, "open_session_params_bundle"

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams;->mFiraOpenSessionParamsBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 72
    return-object v0
.end method
