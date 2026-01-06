.class public Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;
.super Ljava/lang/Object;
.source "RxAntennaPairs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RxAntennaConfig.Builder()"


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
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->-$$Nest$sfgetRANGING_DEFALUT()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->-$$Nest$sfgetAOA_PORTRAIT_DEFALUT()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->-$$Nest$sfgetAOA_LANDSCAPE_DEFALUT()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;->-$$Nest$sfgetRANGING_RFM_DEFALUT()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;
    .locals 2

    .line 88
    new-instance v0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public setRxAntPairs(ILjava/lang/String;)V
    .locals 5
    .param p1, "antennaType"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 76
    const-string v0, ","

    invoke-static {p2, v0}, Lcom/samsung/android/server/uwb/calibration/CalibrationUtils;->splitArrays(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "splitedValues":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 78
    array-length v1, v0

    .line 79
    .local v1, "noOfRxAnts":I
    new-array v2, v1, [B

    .line 80
    .local v2, "rxParis":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 81
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v2, v3

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/uwb/calibration/config/RxAntennaPairs$Builder;->mAntennaPairs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v1    # "noOfRxAnts":I
    .end local v2    # "rxParis":[B
    :cond_1
    return-void
.end method
