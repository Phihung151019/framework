.class public Lcom/samsung/android/server/uwb/bigdata/HWParameter;
.super Ljava/lang/Object;
.source "HWParameter.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "com.samsung.android.uwb"

.field private static final DBG:Z

.field public static final LOGTAG:Ljava/lang/String; = "HWParameterUWB"


# instance fields
.field mContext:Landroid/content/Context;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->mContext:Landroid/content/Context;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 19
    return-void
.end method


# virtual methods
.method public insertLogFromBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    const-string v3, "UWB"

    .line 27
    .local v3, "compID":Ljava/lang/String;
    const-string v5, "ph"

    .line 28
    .local v5, "hitType":Ljava/lang/String;
    const-string v6, "0.0"

    .line 29
    .local v6, "compVer":Ljava/lang/String;
    const-string v7, "sec"

    .line 31
    .local v7, "compManufacture":Ljava/lang/String;
    const-string v8, ""

    .line 32
    .local v8, "developMap":Ljava/lang/String;
    const-string v10, ""

    .line 35
    .local v10, "privateMap":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 36
    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "idxbracket":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 39
    return-void

    .line 41
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "customMap":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v11, "com.samsung.android.uwb"

    move-object v4, p1

    .end local p1    # "feature":Ljava/lang/String;
    .local v4, "feature":Ljava/lang/String;
    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    sget-boolean p1, Lcom/samsung/android/server/uwb/bigdata/HWParameter;->DBG:Z

    const-string v1, "HWParameterUWB"

    if-eqz p1, :cond_2

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Logs to HWParameter : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_2
    const-string p1, "Send Logs to HWParameter : Skip"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    .end local v0    # "idxbracket":I
    .end local v4    # "feature":Ljava/lang/String;
    .end local v9    # "customMap":Ljava/lang/String;
    .restart local p1    # "feature":Ljava/lang/String;
    :cond_3
    move-object v4, p1

    .line 51
    .end local p1    # "feature":Ljava/lang/String;
    .restart local v4    # "feature":Ljava/lang/String;
    :goto_0
    return-void
.end method
