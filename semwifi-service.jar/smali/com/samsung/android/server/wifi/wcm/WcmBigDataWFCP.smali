.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final KEY_CP_AUTO:Ljava/lang/String; = "CAut"

.field public static final KEY_CP_CONNECTION_DURATION:Ljava/lang/String; = "CDur"

.field public static final KEY_CP_DETECTION:Ljava/lang/String; = "CDet"

.field public static final KEY_CP_OPTION:Ljava/lang/String; = "COpt"

.field public static final KEY_CP_OUI:Ljava/lang/String; = "COui"

.field public static final KEY_CP_PAGE_COUNT:Ljava/lang/String; = "CPag"

.field public static final KEY_CP_REDIRECT_URL:Ljava/lang/String; = "CRed"

.field public static final KEY_CP_RESULT:Ljava/lang/String; = "CRes"

.field public static final KEY_CP_SECURE_TYPE:Ljava/lang/String; = "CSec"

.field public static final KEY_CP_UNAUTHENTICATED_DURATION:Ljava/lang/String; = "CUna"

.field private static final KEY_CP_VERSION:Ljava/lang/String; = "CVer"

.field public static final KEY_CP_WEBVIEW:Ljava/lang/String; = "CWeb"

.field private static final WFCP:[[Ljava/lang/String;


# instance fields
.field public mAuto:Ljava/lang/String;

.field public mConnectionDuration:J

.field public mCpDetection:I

.field public mCpOption:I

.field public mCpResult:I

.field public mOui:Ljava/lang/String;

.field public mPageCount:I

.field public mRedirectedUrl:Ljava/lang/String;

.field public mSecurityType:I

.field public mUnauthenticatedDuration:J

.field public mWebview:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "CVer"

    .line 2
    .line 3
    const-string v1, "20210908"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "CDet"

    .line 10
    .line 11
    const-string v1, "0"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v0, "CRes"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v0, "CWeb"

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v0, "CAut"

    .line 30
    .line 31
    const-string v6, ""

    .line 32
    .line 33
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v7, "COpt"

    .line 38
    .line 39
    filled-new-array {v7, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v8, "CPag"

    .line 44
    .line 45
    filled-new-array {v8, v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    const-string v9, "CRed"

    .line 50
    .line 51
    filled-new-array {v9, v1}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const-string v10, "CUna"

    .line 56
    .line 57
    filled-new-array {v10, v1}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    const-string v11, "CDur"

    .line 62
    .line 63
    filled-new-array {v11, v1}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    const-string v12, "CSec"

    .line 68
    .line 69
    filled-new-array {v12, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    const-string v1, "COui"

    .line 74
    .line 75
    filled-new-array {v1, v6}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    move-object v6, v0

    .line 80
    filled-new-array/range {v2 .. v13}, [[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->WFCP:[[Ljava/lang/String;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .locals 3

    .line 1
    const-string v0, "CVer"

    .line 2
    .line 3
    const-string v1, "20210908"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "CDet"

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpDetection:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "CRes"

    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpResult:I

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "CWeb"

    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mWebview:I

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "CAut"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mAuto:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "COpt"

    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpOption:I

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "CPag"

    .line 44
    .line 45
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mPageCount:I

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "CRed"

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mRedirectedUrl:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "CUna"

    .line 58
    .line 59
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mUnauthenticatedDuration:J

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    const-string v0, "CDur"

    .line 65
    .line 66
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mConnectionDuration:J

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    const-string v0, "CSec"

    .line 72
    .line 73
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mSecurityType:I

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string v0, "COui"

    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mOui:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->WFCP:[[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "getJsonFormat - "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public initialize()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpDetection:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpResult:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mWebview:I

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mAuto:Ljava/lang/String;

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mCpOption:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mPageCount:I

    .line 16
    .line 17
    const-string v2, " "

    .line 18
    .line 19
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mRedirectedUrl:Ljava/lang/String;

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mUnauthenticatedDuration:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mConnectionDuration:J

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mSecurityType:I

    .line 28
    .line 29
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFCP;->mOui:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method
