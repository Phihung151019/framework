.class public Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public greylist mApnName:Ljava/lang/String;

.field public greylist mAuthType:I

.field public greylist mId:J

.field public greylist mMcc:Ljava/lang/String;

.field public greylist mMmsProxyAddress:Ljava/lang/String;

.field public greylist mMmsProxyPort:I

.field public greylist mMmsc:Ljava/lang/String;

.field public greylist mMnc:Ljava/lang/String;

.field public greylist mMvnoType:Ljava/lang/String;

.field public greylist mMvnoValue:Ljava/lang/String;

.field public greylist mName:Ljava/lang/String;

.field public greylist mPassword:Ljava/lang/String;

.field public greylist mProtocol:Ljava/lang/String;

.field public greylist mProxyAddress:Ljava/lang/String;

.field public greylist mProxyPort:I

.field public greylist mRoamingProtocol:Ljava/lang/String;

.field public greylist mServer:Ljava/lang/String;

.field public greylist mType:Ljava/lang/String;

.field public greylist mUser:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist build()Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist setApnName(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setAuthType(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mAuthType:I

    return-object p0
.end method

.method public final greylist setId(J)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mId:J

    return-object p0
.end method

.method public greylist setMcc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setMmsProxyAddress(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setMmsProxyPort(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyPort:I

    return-object p0
.end method

.method public greylist setMmsc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsc:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setMnc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setMvnoType(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setMvnoValue(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoValue:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setName(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setPassword(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setProxyAddress(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setProxyPort(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyPort:I

    return-object p0
.end method

.method public greylist setRoamingProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mRoamingProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setServer(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mServer:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setType(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setUser(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method
