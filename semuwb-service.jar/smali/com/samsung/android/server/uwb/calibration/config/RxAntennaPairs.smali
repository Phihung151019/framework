.class public Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;
.super Ljava/lang/Object;
.source "RxAntennaPairs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;
    }
.end annotation


# static fields
.field private static final AOA_LANDSCAPE_DEFALUT:[B

.field private static final AOA_PORTRAIT_DEFALUT:[B

.field private static final EMPTY_DEFAULT:[B

.field private static final RANGING_DEFALUT:[B

.field private static final RANGING_RFM_DEFALUT:[B


# instance fields
.field mAntennaPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetAOA_LANDSCAPE_DEFALUT()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->AOA_LANDSCAPE_DEFALUT:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetAOA_PORTRAIT_DEFALUT()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->AOA_PORTRAIT_DEFALUT:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetRANGING_DEFALUT()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->RANGING_DEFALUT:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetRANGING_RFM_DEFALUT()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->RANGING_RFM_DEFALUT:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->RANGING_DEFALUT:[B

    .line 24
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->AOA_PORTRAIT_DEFALUT:[B

    .line 29
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->AOA_LANDSCAPE_DEFALUT:[B

    .line 34
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->RANGING_RFM_DEFALUT:[B

    .line 40
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->AOA_PORTRAIT_DEFALUT:[B

    sput-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->EMPTY_DEFAULT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 45
    .local p1, "antennaPairs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->mAntennaPairs:Ljava/util/HashMap;

    .line 47
    return-void
.end method


# virtual methods
.method public getRxAntPairs(I)[B
    .locals 2
    .param p1, "antUsage"    # I

    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->mAntennaPairs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 51
    .local v0, "value":[B
    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->EMPTY_DEFAULT:[B

    .line 54
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AntennaPair: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->mAntennaPairs:Ljava/util/HashMap;

    .line 59
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->printArray([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    return-object v0
.end method
