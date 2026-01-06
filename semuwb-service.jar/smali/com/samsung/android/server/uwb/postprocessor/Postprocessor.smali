.class public Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;
.super Ljava/lang/Object;
.source "Postprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;,
        Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    }
.end annotation


# static fields
.field private static final IDX_AVERAGE_SVM_IN_FOV_CONFIDENCE_THRESHOLD:I = 0x1

.field private static final IDX_EKF_OUTPUT_CONFIDENCE_THRESHOLD:I = 0x0

.field private static final IDX_FOV:I = 0x7

.field private static final IDX_IMU_WINDOW_SIZE:I = 0x4

.field private static final IDX_OLDEST_ACCEL_THRESHOLD:I = 0x5

.field private static final IDX_ORIENTATION_JUMP_THRESHOLD:I = 0x2

.field private static final IDX_STD_ACCEL_THRESHOLD:I = 0x3

.field private static final IDX_TIMESTAMP_THRESHOLD:I = 0x6

.field private static final INVALID_COORDINATE:D = -10000.0

.field private static final INVALID_DIFF:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final UWB_SIGMA_AZ_IN_DEG:D = 10.0

.field private static final UWB_SIGMA_EL_IN_DEG:D = 10.0

.field private static final UWB_SIGMA_RANGE_IN_M:D = 0.1


# instance fields
.field private A:Lorg/apache/commons/math3/linear/RealMatrix;

.field private H:Lorg/apache/commons/math3/linear/RealMatrix;

.field private PARAMS:[D

.field private Q:Lorg/apache/commons/math3/linear/RealMatrix;

.field private curAbsoluteRotationAngleAboutX:D

.field private curAbsoluteRotationAngleAboutY:D

.field private curRx1SnrMain:D

.field private curTimeStamp:J

.field private dt:D

.field private ekfOutputAoA:D

.field private ekfOutputAoAEl:D

.field private ekfOutputRange:D

.field private errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private eye:Lorg/apache/commons/math3/linear/RealMatrix;

.field public finalOutputAzimuthConfidence:D

.field public finalOutputElevationConfidence:D

.field public finalOutputErrorAzimuth:D

.field public finalOutputErrorElevation:D

.field public finalOutputErrorRangeMeter:D

.field public finalOutputFOV:I

.field public finalOutputRange:D

.field public finalOutputRangeConfidence:D

.field private fovClassifier:Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;

.field private fovPredictionBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fovPredictionBufferSize:I

.field private innovation:Lorg/apache/commons/math3/linear/RealVector;

.field private inputAoa:D

.field private inputAoaEl:D

.field private inputRange:D

.field public isDiffInvalid:Z

.field private isEkfRunning:Z

.field public isTargetInFOV:Z

.field private isUsingImuInSensorFusion:Z

.field private kalmanGain:Lorg/apache/commons/math3/linear/RealMatrix;

.field private kg_denom:Lorg/apache/commons/math3/linear/RealMatrix;

.field private kg_num:Lorg/apache/commons/math3/linear/RealMatrix;

.field private mAccelerometer:[F

.field private mAoa:I

.field private mAoaEl:I

.field private mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

.field private mDistance:I

.field private mDistance2:I

.field public mFinalOutputAzimuth:D

.field public mFinalOutputElevation:D

.field public mFinalOutputXCoord:D

.field public mFinalOutputYCoord:D

.field public mFinalOutputZCoord:D

.field private mFirstIndex1:F

.field private mFirstIndex2:F

.field private mGyroscope:[F

.field private mMainIndex1:F

.field private mMainIndex2:F

.field private mOrientation:[F

.field private mPdoa1:I

.field private mPdoa2:I

.field private mPdoaIndex1:I

.field private mPdoaIndex2:I

.field private mSnrFirst1:I

.field private mSnrFirst2:I

.field private mSnrMain1:I

.field private mSnrMain2:I

.field private measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

.field public predictedAz:D

.field public predictedEl:D

.field public predictedRange:D

.field private prevAbsoluteRotationAngleAboutX:D

.field private prevAbsoluteRotationAngleAboutY:D

.field private prevRx1SnrMain:D

.field private prevTimeStamp:J

.field private recentAccelXHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private recentAoa2s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private recentAoas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private recentAzDiffs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private recentElDiffs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private recentRangeDiffs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private recentRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field public stateEstimate:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DZLcom/samsung/android/server/uwb/postprocessor/DeviceParams;)V
    .locals 18
    .param p1, "rangingInterval"    # D
    .param p3, "isImuInputEnabled"    # Z
    .param p4, "param"    # Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    .line 115
    new-array v2, v1, [F

    iput-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAccelerometer:[F

    .line 116
    new-array v2, v1, [F

    iput-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mGyroscope:[F

    .line 161
    const/16 v2, 0x14

    new-array v2, v2, [D

    iput-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    .line 178
    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    .line 180
    move-wide/from16 v3, p1

    iput-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->dt:D

    .line 182
    move/from16 v5, p3

    iput-boolean v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isUsingImuInSensorFusion:Z

    .line 187
    const-wide v6, 0x3fe999999999999aL    # 0.8

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6, v7}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 188
    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v6, v7}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 189
    const/4 v6, 0x4

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    invoke-virtual {v0, v6, v10, v11}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 190
    invoke-virtual {v0, v1, v10, v11}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 191
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v6, v7}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 192
    const/4 v6, 0x5

    const-wide v11, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v6, v11, v12}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 193
    const/4 v6, 0x6

    const-wide v13, 0x40a7700000000000L    # 3000.0

    invoke-virtual {v0, v6, v13, v14}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 194
    const/4 v6, 0x7

    const-wide/high16 v13, 0x4044000000000000L    # 40.0

    invoke-virtual {v0, v6, v13, v14}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->setParam(ID)V

    .line 200
    new-instance v6, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v13, 0x0

    invoke-direct {v6, v1, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    iput-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    .line 201
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v7, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v15, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-direct {v15, v1, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    invoke-virtual {v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v15

    invoke-direct {v7, v15}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 204
    new-instance v6, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v7, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v15, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v15, v1, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    invoke-virtual {v15}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v15

    invoke-direct {v7, v15}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 205
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 206
    .local v6, "sigmaRange":D
    const-wide v11, 0x3fc657184ae74487L    # 0.17453292519943295

    .line 207
    .local v11, "sigmaAz":D
    const-wide v1, 0x3fc657184ae74487L    # 0.17453292519943295

    .line 208
    .local v1, "sigmaEl":D
    iget-object v15, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-interface {v15, v8, v8, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 209
    iget-object v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const/4 v10, 0x1

    invoke-interface {v9, v10, v10, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 210
    iget-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const/4 v4, 0x2

    invoke-interface {v3, v4, v4, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 213
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v4, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x3

    invoke-direct {v9, v15, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    .line 214
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 217
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v4, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v9, v15, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    .line 218
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 221
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v4, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v9, v15, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    .line 222
    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->A:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 226
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v4, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v9, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-wide/from16 v16, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide v13, 0x3fb999999999999aL    # 0.1

    .end local v1    # "sigmaEl":D
    .local v16, "sigmaEl":D
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const/4 v15, 0x3

    invoke-direct {v9, v15, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    invoke-virtual {v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 229
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedRange:D

    .line 230
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedAz:D

    .line 231
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedEl:D

    .line 233
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v15, 0x3

    invoke-direct {v3, v15, v15}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 234
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v15, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    iput-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    .line 237
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    const/4 v10, 0x1

    invoke-direct {v1, v15, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kg_denom:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 238
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v15, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kg_num:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 239
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v15, v10}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kalmanGain:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 242
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v2, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v15, v13, v14}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    .line 243
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->eye:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 250
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->ekfOutputRange:D

    .line 255
    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputFOV:I

    .line 256
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    .line 258
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    .line 259
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    .line 260
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    .line 261
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 262
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    .line 263
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputErrorRangeMeter:D

    .line 264
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputAzimuthConfidence:D

    .line 265
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputElevationConfidence:D

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRangeDiffs:Ljava/util/ArrayList;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAzDiffs:Ljava/util/ArrayList;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentElDiffs:Ljava/util/ArrayList;

    .line 273
    const/4 v15, 0x3

    iput v15, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBufferSize:I

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    .line 275
    iput-boolean v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    .line 276
    iput-boolean v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isDiffInvalid:Z

    .line 279
    iput-boolean v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isEkfRunning:Z

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    .line 285
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevRx1SnrMain:D

    .line 286
    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curRx1SnrMain:D

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRanges:Ljava/util/ArrayList;

    .line 292
    const/16 v1, 0x14

    .line 293
    .local v1, "numFeature":I
    new-instance v2, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;-><init>(I)V

    iput-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovClassifier:Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;

    .line 294
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovClassifier:Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->resetMemoryState()V

    .line 295
    return-void
.end method

.method private ConvertToSphericalCoordinate(Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    .locals 9
    .param p1, "pc"    # Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    .line 480
    new-instance v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;-><init>()V

    .line 481
    .local v0, "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    iget-wide v1, p1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    iget-wide v3, p1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    neg-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;->az:D

    .line 482
    iget-wide v1, p1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    iget-wide v3, p1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-wide v7, p1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;->el:D

    .line 483
    return-object v0
.end method

.method private detectDrasticMotion()Z
    .locals 6

    .line 814
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 815
    return v1

    .line 818
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 819
    .local v0, "ss":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 820
    iget-object v3, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 819
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 823
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 824
    const/4 v1, 0x1

    return v1

    .line 826
    :cond_2
    return v1
.end method

.method private hardReset()V
    .locals 15

    .line 793
    sget-object v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    const-string v1, "PostProcessor hardReset starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v3, 0x3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 795
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-direct {v2, v3, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 798
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getData()[[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 799
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 800
    .local v0, "sigmaRange":D
    const-wide v4, 0x3fc657184ae74487L    # 0.17453292519943295

    .line 801
    .local v4, "sigmaAz":D
    const-wide v6, 0x3fc657184ae74487L    # 0.17453292519943295

    .line 802
    .local v6, "sigmaEl":D
    iget-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x0

    invoke-interface {v2, v12, v12, v10, v11}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 803
    iget-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v10, 0x1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    invoke-interface {v2, v10, v10, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 804
    iget-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v10, 0x2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-interface {v2, v10, v10, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 807
    iput-boolean v12, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isEkfRunning:Z

    .line 810
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const-wide/16 v8, 0x0

    invoke-direct {v2, v3, v8, v9}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(ID)V

    iput-object v2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    .line 811
    return-void
.end method

.method private processNewMeasurements(JIFFIFFIFFIIFFIIDDDDLjava/lang/String;I)V
    .locals 38
    .param p1, "timestampMillis"    # J
    .param p3, "range"    # I
    .param p4, "aoa1"    # F
    .param p5, "pdoa1"    # F
    .param p6, "pdoa1idx"    # I
    .param p7, "aoa2"    # F
    .param p8, "pdoa2"    # F
    .param p9, "pdoa2idx"    # I
    .param p10, "rx1mainidx"    # F
    .param p11, "rx1firstidx"    # F
    .param p12, "rx1snrmain"    # I
    .param p13, "rx1snrfirst"    # I
    .param p14, "rx2mainidx"    # F
    .param p15, "rx2firstidx"    # F
    .param p16, "rx2snrmain"    # I
    .param p17, "rx2snrfirst"    # I
    .param p18, "imuAzimuth"    # D
    .param p20, "imuPitch"    # D
    .param p22, "imuRoll"    # D
    .param p24, "imuAccel"    # D
    .param p26, "mode"    # Ljava/lang/String;
    .param p27, "range2"    # I

    .line 528
    move-object/from16 v0, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p12

    move-wide/from16 v11, p18

    move-wide/from16 v13, p22

    move-object/from16 v15, p26

    const/4 v1, 0x0

    .line 530
    .local v1, "isFpByRangeDiff":Z
    if-eqz p27, :cond_0

    sub-int v2, v7, p27

    iget-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget v3, v3, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->fpFilteringThreshold:I

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget v2, v2, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->fpFilteringMaxDistance:I

    if-gt v7, v2, :cond_0

    .line 531
    const/4 v1, 0x1

    .line 534
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-boolean v2, v2, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->isAoa1Flipped:Z

    if-eqz v2, :cond_1

    .line 535
    neg-float v2, v8

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    goto :goto_0

    .line 537
    :cond_1
    float-to-double v2, v8

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    .line 540
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-boolean v2, v2, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->isAoa2Flipped:Z

    if-eqz v2, :cond_2

    .line 541
    neg-float v2, v9

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    goto :goto_1

    .line 543
    :cond_2
    float-to-double v2, v9

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    .line 546
    :goto_1
    int-to-double v2, v7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    .line 547
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    move-wide/from16 v16, v2

    const-wide/16 v2, 0x0

    cmpg-double v6, v16, v2

    if-lez v6, :cond_18

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    move/from16 v32, v1

    goto/16 :goto_c

    .line 552
    :cond_3
    move-wide/from16 v2, p1

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curTimeStamp:J

    .line 553
    iget-wide v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curTimeStamp:J

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevTimeStamp:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    iget-object v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    const/4 v5, 0x6

    aget-wide v18, v4, v5

    cmpl-double v2, v2, v18

    if-ltz v2, :cond_4

    .line 554
    invoke-direct {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->hardReset()V

    .line 555
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 556
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 557
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 558
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovClassifier:Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->resetMemoryState()V

    .line 562
    :cond_4
    int-to-double v2, v10

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curRx1SnrMain:D

    .line 563
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curRx1SnrMain:D

    move v4, v5

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevRx1SnrMain:D

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpl-double v2, v2, v5

    if-ltz v2, :cond_5

    .line 564
    sget-object v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    const-string v3, "SNR jump! Reset RNN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_5
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curRx1SnrMain:D

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevRx1SnrMain:D

    .line 569
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutX:D

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevAbsoluteRotationAngleAboutX:D

    .line 570
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevAbsoluteRotationAngleAboutY:D

    .line 572
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_6
    goto :goto_2

    :sswitch_0
    const-string v2, "landscape-left"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_1
    const-string v2, "portrait"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_2
    const-string v2, "landscape-right"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :goto_2
    const/4 v2, -0x1

    :goto_3
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    packed-switch v2, :pswitch_data_0

    move v2, v4

    const/16 v18, 0x1

    const/16 v20, 0x2

    move-wide/from16 v3, p20

    goto :goto_4

    .line 587
    :pswitch_0
    move v2, v4

    const/16 v20, 0x2

    neg-double v3, v11

    iput-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutX:D

    .line 588
    invoke-static/range {p20 .. p21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v18

    if-gez v3, :cond_7

    .line 589
    neg-double v3, v13

    iput-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    move-wide/from16 v3, p20

    const/16 v18, 0x1

    goto :goto_4

    .line 591
    :cond_7
    iput-wide v13, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    move-wide/from16 v3, p20

    const/16 v18, 0x1

    goto :goto_4

    .line 578
    :pswitch_1
    move v2, v4

    const/16 v20, 0x2

    iput-wide v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutX:D

    .line 580
    invoke-static/range {p20 .. p21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v18

    if-gez v3, :cond_8

    .line 581
    neg-double v3, v13

    iput-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    move-wide/from16 v3, p20

    const/16 v18, 0x1

    goto :goto_4

    .line 583
    :cond_8
    iput-wide v13, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    .line 585
    move-wide/from16 v3, p20

    const/16 v18, 0x1

    goto :goto_4

    .line 574
    :pswitch_2
    move v2, v4

    const/16 v20, 0x2

    move-wide/from16 v3, p20

    const/16 v18, 0x1

    neg-double v5, v3

    iput-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutX:D

    .line 575
    neg-double v5, v11

    iput-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    .line 576
    nop

    .line 597
    :goto_4
    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    invoke-static/range {p24 .. p25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v5, v5

    move/from16 v21, v2

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    move-object/from16 v22, v2

    const/4 v2, 0x4

    aget-wide v22, v22, v2

    cmpl-double v5, v5, v22

    if-lez v5, :cond_9

    .line 599
    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAccelXHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 603
    :cond_9
    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curTimeStamp:J

    iput-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevTimeStamp:J

    .line 606
    const-wide/16 v5, 0x0

    .line 607
    .local v5, "var_aoa_win3":D
    const-wide/16 v22, 0x0

    .line 608
    .local v22, "var_aoa_win7":D
    const-wide/16 v24, 0x0

    .line 609
    .local v24, "var_aoa2_win3":D
    const-wide/16 v26, 0x0

    .line 610
    .local v26, "var_aoa2_win7":D
    const-wide/16 v28, 0x0

    .line 611
    .local v28, "var_range_win3":D
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    float-to-double v3, v9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRanges:Ljava/util/ArrayList;

    int-to-double v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_a

    .line 615
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 617
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 620
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 622
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v2

    .line 623
    .local v2, "temp_aoaBuffer":[D
    invoke-static {v2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v22

    .line 624
    iget-object v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    move-object/from16 v31, v2

    const/4 v2, 0x4

    .end local v2    # "temp_aoaBuffer":[D
    .local v31, "temp_aoaBuffer":[D
    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v2

    .line 625
    .local v2, "temp_aoaBuffer_win3":[D
    invoke-static {v2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    .line 626
    iget-object v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v3, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v3

    .line 627
    .local v3, "temp_aoa2Buffer":[D
    invoke-static {v3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v26

    .line 628
    iget-object v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    const/4 v2, 0x4

    const/4 v3, 0x7

    .end local v2    # "temp_aoaBuffer_win3":[D
    .end local v3    # "temp_aoa2Buffer":[D
    .local v33, "temp_aoaBuffer_win3":[D
    .local v34, "temp_aoa2Buffer":[D
    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v2

    .line 629
    .local v2, "temp_aoa2Buffer_win3":[D
    invoke-static {v2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v24

    move-wide v2, v5

    move-wide/from16 v4, v22

    move-wide/from16 v7, v24

    move-wide/from16 v11, v26

    goto :goto_5

    .line 620
    .end local v2    # "temp_aoa2Buffer_win3":[D
    .end local v31    # "temp_aoaBuffer":[D
    .end local v33    # "temp_aoaBuffer_win3":[D
    .end local v34    # "temp_aoa2Buffer":[D
    :cond_b
    move-wide v2, v5

    move-wide/from16 v4, v22

    move-wide/from16 v7, v24

    move-wide/from16 v11, v26

    .line 640
    .end local v5    # "var_aoa_win3":D
    .end local v22    # "var_aoa_win7":D
    .end local v24    # "var_aoa2_win3":D
    .end local v26    # "var_aoa2_win7":D
    .local v2, "var_aoa_win3":D
    .local v4, "var_aoa_win7":D
    .local v7, "var_aoa2_win3":D
    .local v11, "var_aoa2_win7":D
    :goto_5
    move/from16 v6, p6

    int-to-float v9, v6

    move/from16 v22, v9

    move/from16 v9, p9

    int-to-float v6, v9

    move/from16 v23, v6

    int-to-float v6, v10

    move/from16 v9, p13

    move/from16 v24, v6

    int-to-float v6, v9

    move/from16 v9, p16

    move/from16 v25, v6

    int-to-float v6, v9

    move/from16 v9, p17

    move/from16 v26, v6

    int-to-float v6, v9

    move/from16 v27, v6

    double-to-float v6, v2

    move-wide/from16 v33, v2

    .end local v2    # "var_aoa_win3":D
    .local v33, "var_aoa_win3":D
    double-to-float v2, v4

    double-to-float v3, v7

    move/from16 v31, v2

    double-to-float v2, v11

    move/from16 v35, v2

    sub-float v2, p10, p11

    .line 659
    move/from16 v36, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v37, v2

    sub-float v2, p14, p15

    .line 660
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/16 v19, 0x0

    aput p4, v3, v19

    aput p5, v3, v18

    aput v22, v3, v20

    const/16 v22, 0x3

    aput p7, v3, v22

    const/16 v30, 0x4

    aput p8, v3, v30

    const/16 v22, 0x5

    aput v23, v3, v22

    aput p10, v3, v21

    const/16 v32, 0x7

    aput p11, v3, v32

    const/16 v21, 0x8

    aput v24, v3, v21

    const/16 v21, 0x9

    aput v25, v3, v21

    const/16 v21, 0xa

    aput p14, v3, v21

    const/16 v21, 0xb

    aput p15, v3, v21

    const/16 v21, 0xc

    aput v26, v3, v21

    const/16 v21, 0xd

    aput v27, v3, v21

    const/16 v21, 0xe

    aput v6, v3, v21

    const/16 v6, 0xf

    aput v31, v3, v6

    const/16 v6, 0x10

    aput v36, v3, v6

    const/16 v6, 0x11

    aput v35, v3, v6

    const/16 v6, 0x12

    aput v37, v3, v6

    const/16 v6, 0x13

    aput v2, v3, v6

    move-object v2, v3

    .line 663
    .local v2, "featureData":[F
    sget-object v3, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v4

    .end local v4    # "var_aoa_win7":D
    .local v21, "var_aoa_win7":D
    const-string v4, "Classifier: Input value = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p15 .. p15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p16 .. p16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-float v6, p10, p11

    move-wide/from16 v23, v7

    const/4 v7, 0x0

    .end local v7    # "var_aoa2_win3":D
    .local v23, "var_aoa2_win3":D
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-float v5, p14, p15

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-wide/16 v3, 0x0

    .line 668
    .local v3, "predictionVal":D
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_d

    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c

    goto :goto_6

    .line 671
    :cond_c
    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovClassifier:Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;

    invoke-virtual {v5, v2}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessClassifier;->predict([F)[[F

    move-result-object v5

    .line 672
    .local v5, "prediction":[[F
    const/16 v19, 0x0

    aget-object v6, v5, v19

    aget v6, v6, v19

    float-to-double v3, v6

    move-wide v7, v3

    goto :goto_7

    .line 669
    .end local v5    # "prediction":[[F
    :cond_d
    :goto_6
    const-wide/16 v3, 0x0

    move-wide v7, v3

    .line 674
    .end local v3    # "predictionVal":D
    .local v7, "predictionVal":D
    :goto_7
    sget-object v3, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Classifier: Output value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-wide v5, v5, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->FoV:D

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_f

    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    float-to-double v4, v3

    iget-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    move-object v6, v2

    .end local v2    # "featureData":[F
    .local v6, "featureData":[F
    iget-wide v2, v3, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->FoV:D

    cmpg-double v2, v4, v2

    if-gtz v2, :cond_10

    .line 677
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    cmpl-double v3, v7, v25

    if-lez v3, :cond_e

    move/from16 v3, v18

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 676
    .end local v6    # "featureData":[F
    .restart local v2    # "featureData":[F
    :cond_f
    move-object v6, v2

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    .line 679
    .end local v2    # "featureData":[F
    .restart local v6    # "featureData":[F
    :cond_10
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :goto_9
    cmpl-double v2, v7, v25

    if-lez v2, :cond_11

    move/from16 v2, v18

    if-ne v1, v2, :cond_11

    .line 683
    iget-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    const-string v3, "Filter by range diff"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_11
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBufferSize:I

    if-le v2, v3, :cond_12

    .line 688
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 687
    :cond_12
    const/4 v4, 0x0

    .line 696
    :goto_a
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->fovPredictionBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    .line 699
    sget-object v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is Target in FOV = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-direct {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->detectDrasticMotion()Z

    move-result v19

    .line 703
    .local v19, "isDrasticMotionDetected":Z
    if-eqz v19, :cond_13

    .line 704
    sget-object v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    const-string v3, "Drastic motion detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->hardReset()V

    .line 706
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 707
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAoa2s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 708
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 712
    :cond_13
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    double-to-int v2, v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_14

    .line 713
    return-void

    .line 716
    :cond_14
    iget-boolean v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isEkfRunning:Z

    const-wide v25, 0x4066800000000000L    # 180.0

    const-wide v30, 0x400921fb54442d18L    # Math.PI

    if-nez v2, :cond_17

    .line 717
    move v3, v1

    .end local v1    # "isFpByRangeDiff":Z
    .local v3, "isFpByRangeDiff":Z
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    move v5, v3

    move/from16 v27, v4

    .end local v3    # "isFpByRangeDiff":Z
    .local v5, "isFpByRangeDiff":Z
    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    move/from16 v32, v5

    move-object/from16 v35, v6

    .end local v5    # "isFpByRangeDiff":Z
    .end local v6    # "featureData":[F
    .local v32, "isFpByRangeDiff":Z
    .local v35, "featureData":[F
    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    move-wide/from16 v16, v7

    move/from16 v8, v18

    move/from16 v7, v27

    const-wide/16 v36, 0x0

    .end local v7    # "predictionVal":D
    .local v16, "predictionVal":D
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isMeasurementValid(DDD)Z

    move-result v1

    .line 718
    .local v1, "isValid":Z
    if-eqz v1, :cond_15

    iget-boolean v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    if-eqz v2, :cond_15

    .line 720
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->initFilter()V

    .line 723
    :cond_15
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    .line 726
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    .line 727
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    .line 728
    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    .line 729
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    cmpl-double v2, v2, v36

    if-nez v2, :cond_16

    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    cmpl-double v2, v2, v36

    if-nez v2, :cond_16

    .line 730
    move-wide/from16 v2, v36

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    goto :goto_b

    .line 732
    :cond_16
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    iget-wide v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    neg-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    div-double v2, v2, v30

    mul-double v2, v2, v25

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 734
    :goto_b
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    iget-wide v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    iget-wide v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    mul-double/2addr v4, v6

    iget-wide v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    move-wide/from16 v36, v4

    iget-wide v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    mul-double/2addr v6, v4

    add-double v4, v36, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    div-double v2, v2, v30

    mul-double v2, v2, v25

    iput-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    .line 736
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->calculateErrorConfidence()V

    .line 738
    return-void

    .line 742
    .end local v16    # "predictionVal":D
    .end local v32    # "isFpByRangeDiff":Z
    .end local v35    # "featureData":[F
    .local v1, "isFpByRangeDiff":Z
    .restart local v6    # "featureData":[F
    .restart local v7    # "predictionVal":D
    :cond_17
    move/from16 v32, v1

    move-object/from16 v35, v6

    move-wide/from16 v16, v7

    move/from16 v8, v18

    move v7, v4

    .end local v1    # "isFpByRangeDiff":Z
    .end local v6    # "featureData":[F
    .end local v7    # "predictionVal":D
    .restart local v16    # "predictionVal":D
    .restart local v32    # "isFpByRangeDiff":Z
    .restart local v35    # "featureData":[F
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->sensorFusion()V

    .line 745
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->ekfOutputRange:D

    .line 767
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->ekfOutputRange:D

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    .line 770
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    .line 771
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    .line 772
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    .line 773
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    neg-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    div-double v1, v1, v30

    mul-double v1, v1, v25

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 774
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    mul-double/2addr v3, v5

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    div-double v1, v1, v30

    mul-double v1, v1, v25

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    .line 776
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->calculateErrorConfidence()V

    .line 777
    return-void

    .line 547
    .end local v11    # "var_aoa2_win7":D
    .end local v16    # "predictionVal":D
    .end local v19    # "isDrasticMotionDetected":Z
    .end local v21    # "var_aoa_win7":D
    .end local v23    # "var_aoa2_win3":D
    .end local v28    # "var_range_win3":D
    .end local v32    # "isFpByRangeDiff":Z
    .end local v33    # "var_aoa_win3":D
    .end local v35    # "featureData":[F
    .restart local v1    # "isFpByRangeDiff":Z
    :cond_18
    move/from16 v32, v1

    .line 548
    .end local v1    # "isFpByRangeDiff":Z
    .restart local v32    # "isFpByRangeDiff":Z
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x28f7908a -> :sswitch_2
        0x2b77bb9b -> :sswitch_1
        0x64684bd9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calculateErrorConfidence()V
    .locals 27

    .line 487
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->getStandardTargetCoordinate(DDD)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->ConvertToSphericalCoordinate(Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;

    move-result-object v1

    .line 488
    .local v1, "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    .line 489
    .local v2, "measuredRange":D
    iget-wide v4, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;->el:D

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v8

    .line 490
    .local v4, "measuredEl":D
    iget-wide v10, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;->az:D

    mul-double/2addr v10, v6

    div-double/2addr v10, v8

    .line 492
    .local v10, "measuredAz":D
    const/16 v6, 0xa

    .line 493
    .local v6, "windowSize":I
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRangeDiffs:Ljava/util/ArrayList;

    iget-wide v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAzDiffs:Ljava/util/ArrayList;

    iget-wide v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentElDiffs:Ljava/util/ArrayList;

    iget-wide v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRangeDiffs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v6, :cond_0

    .line 497
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRangeDiffs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAzDiffs:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentElDiffs:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 504
    :cond_0
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentRangeDiffs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v7

    .line 505
    .local v7, "temp_recentRangeDiffs":[D
    invoke-static {v7}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v8

    .line 506
    .local v8, "var_recentRangeDiffs":D
    iget-object v12, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentAzDiffs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v12

    .line 507
    .local v12, "temp_recentAzDiffs":[D
    invoke-static {v12}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v13

    .line 508
    .local v13, "var_recentAzDiffs":D
    iget-object v15, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->recentElDiffs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    .local v16, "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    new-instance v1, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v15, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v1

    .line 509
    .local v1, "temp_recentElDiffs":[D
    invoke-static {v1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v17

    .line 511
    .local v17, "var_recentElDiffs":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    div-double v19, v19, v21

    move-wide/from16 v23, v2

    move-object v3, v1

    .end local v1    # "temp_recentElDiffs":[D
    .end local v2    # "measuredRange":D
    .local v3, "temp_recentElDiffs":[D
    .local v23, "measuredRange":D
    sub-double v1, v21, v19

    move-wide/from16 v19, v4

    move-object v5, v3

    .end local v3    # "temp_recentElDiffs":[D
    .end local v4    # "measuredEl":D
    .local v5, "temp_recentElDiffs":[D
    .local v19, "measuredEl":D
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRangeConfidence:D

    .line 512
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v25, 0x4056800000000000L    # 90.0

    div-double v1, v1, v25

    sub-double v1, v21, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputAzimuthConfidence:D

    .line 513
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v1, v1, v25

    sub-double v1, v21, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputElevationConfidence:D

    .line 515
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputErrorRangeMeter:D

    .line 516
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputErrorAzimuth:D

    .line 517
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputErrorElevation:D

    .line 518
    return-void
.end method

.method public calculatePostprocessor(ZLcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;[F[F[F)V
    .locals 35
    .param p1, "ppFovEnable"    # Z
    .param p2, "rangingMeasure"    # Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .param p3, "orientation"    # [F
    .param p4, "accel"    # [F
    .param p5, "gyro"    # [F

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    sget-object v4, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    const-string v5, "calculatePostprocessor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    .local v4, "startTime":J
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getDistance()I

    move-result v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDistance:I

    .line 303
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v28

    .line 305
    .local v28, "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxModeForRanging()B

    move-result v6

    const/4 v7, 0x2

    const/16 v29, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 306
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRanging()I

    move-result v6

    if-lt v6, v7, :cond_1

    .line 307
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v6

    aget-byte v6, v6, v29

    if-ne v6, v8, :cond_0

    .line 308
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v6, v6, v29

    float-to-int v6, v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    .line 309
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v6, v6, v8

    float-to-int v6, v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    goto/16 :goto_1

    .line 311
    :cond_0
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v6, v6, v29

    float-to-int v6, v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    .line 312
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v6, v6, v8

    float-to-int v6, v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    goto/16 :goto_1

    .line 314
    :cond_1
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRanging()I

    move-result v6

    if-lt v6, v8, :cond_9

    .line 315
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v6

    aget-byte v6, v6, v29

    if-ne v6, v8, :cond_2

    .line 316
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v6, v6, v29

    float-to-int v6, v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v6

    aget v6, v6, v29

    float-to-int v6, v6

    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    goto :goto_1

    .line 321
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxModeForRanging()B

    move-result v6

    const/4 v9, 0x4

    if-ne v6, v9, :cond_16

    .line 322
    const/4 v6, 0x1

    .line 323
    .local v6, "numOfAoa":I
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v9

    aget-byte v9, v9, v8

    if-eqz v9, :cond_4

    .line 324
    const/4 v6, 0x2

    .line 326
    :cond_4
    if-ne v6, v7, :cond_6

    .line 327
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v9

    aget-byte v9, v9, v29

    if-ne v9, v8, :cond_5

    .line 328
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v9

    aget v9, v9, v29

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    .line 329
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v9

    aget v9, v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    goto :goto_0

    .line 331
    :cond_5
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v9

    aget v9, v9, v29

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    .line 332
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v9

    aget v9, v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    goto :goto_0

    .line 334
    :cond_6
    if-ne v6, v8, :cond_8

    .line 335
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v9

    aget-byte v9, v9, v29

    if-ne v9, v8, :cond_7

    .line 336
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v9

    aget v9, v9, v29

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    goto :goto_0

    .line 338
    :cond_7
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getAoa()[F

    move-result-object v9

    aget v9, v9, v29

    float-to-int v9, v9

    iput v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    .line 341
    .end local v6    # "numOfAoa":I
    :cond_8
    :goto_0
    nop

    .line 345
    :cond_9
    :goto_1
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getDistance2()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getDistance2()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_a
    move/from16 v6, v29

    :goto_2
    iput v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDistance2:I

    .line 347
    array-length v6, v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    .line 348
    array-length v6, v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAccelerometer:[F

    .line 349
    array-length v6, v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mGyroscope:[F

    .line 351
    iget v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDistance:I

    iget v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    int-to-float v6, v6

    iget v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoa1:I

    int-to-float v9, v9

    move-wide v1, v4

    move v4, v6

    .end local v4    # "startTime":J
    .local v1, "startTime":J
    iget v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoaIndex1:I

    iget v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    int-to-float v5, v5

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoa2:I

    int-to-float v10, v10

    move v11, v7

    move v7, v5

    move v5, v9

    iget v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoaIndex2:I

    move v12, v8

    move v8, v10

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mMainIndex1:F

    move v13, v11

    iget v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFirstIndex1:F

    move v14, v12

    iget v12, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrMain1:I

    move v15, v13

    iget v13, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrFirst1:I

    move/from16 v16, v14

    iget v14, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mMainIndex2:F

    move/from16 v17, v15

    iget v15, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFirstIndex2:F

    move-wide/from16 v18, v1

    .end local v1    # "startTime":J
    .local v18, "startTime":J
    iget v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrMain2:I

    iget v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrFirst2:I

    move/from16 v20, v1

    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    aget v1, v1, v29

    move/from16 v21, v2

    float-to-double v1, v1

    move-wide/from16 v22, v1

    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    aget v1, v1, v16

    float-to-double v1, v1

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    aget v1, v1, v17

    float-to-double v1, v1

    move-wide/from16 v26, v1

    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAccelerometer:[F

    aget v1, v1, v29

    float-to-double v1, v1

    move/from16 v30, v16

    move/from16 v16, v20

    move-wide/from16 v33, v26

    move/from16 v27, v17

    move/from16 v17, v21

    move-wide/from16 v20, v24

    move-wide/from16 v24, v1

    move-wide/from16 v1, v18

    move-wide/from16 v18, v22

    move-wide/from16 v22, v33

    .end local v18    # "startTime":J
    .restart local v1    # "startTime":J
    const-string v26, "portrait"

    move-wide/from16 v31, v1

    .end local v1    # "startTime":J
    .local v31, "startTime":J
    iget v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDistance2:I

    move/from16 v30, v27

    move/from16 v27, v1

    move-wide/from16 v1, v31

    .end local v31    # "startTime":J
    .restart local v1    # "startTime":J
    invoke-direct/range {v0 .. v27}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->processNewMeasurements(JIFFIFFIFFIIFFIIDDDDLjava/lang/String;I)V

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 356
    .local v3, "timeElapsed":J
    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    double-to-int v5, v5

    .local v5, "finalAzimuth":I
    iget-wide v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    double-to-int v6, v6

    .line 357
    .local v6, "finalElevation":I
    iget-boolean v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    if-nez v7, :cond_12

    .line 358
    if-eqz p1, :cond_d

    .line 359
    iget v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    neg-int v7, v7

    iget v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    neg-int v8, v8

    const/16 v9, 0x64

    const/16 v10, -0x64

    if-ltz v8, :cond_b

    move v8, v9

    goto :goto_3

    :cond_b
    move v8, v10

    :goto_3
    add-int/2addr v7, v8

    int-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 360
    iget v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    iget v8, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    if-ltz v8, :cond_c

    goto :goto_4

    :cond_c
    move v9, v10

    :goto_4
    add-int/2addr v7, v9

    int-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    goto :goto_5

    .line 362
    :cond_d
    iget v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    neg-int v7, v7

    int-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 363
    iget v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    int-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    .line 365
    :goto_5
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    const-wide v9, 0x4066800000000000L    # 180.0

    cmpl-double v7, v7, v9

    const-wide v11, -0x3f99833333333333L    # -179.9

    const-wide v13, 0x40667ccccccccccdL    # 179.9

    const-wide v15, -0x3f99800000000000L    # -180.0

    if-ltz v7, :cond_e

    .line 366
    iput-wide v13, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    goto :goto_6

    .line 368
    :cond_e
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    cmpg-double v7, v7, v15

    if-gtz v7, :cond_f

    .line 369
    iput-wide v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 371
    :cond_f
    :goto_6
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_10

    .line 372
    iput-wide v13, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    .line 374
    :cond_10
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    cmpg-double v7, v7, v15

    if-gtz v7, :cond_11

    .line 375
    iput-wide v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    .line 377
    :cond_11
    const-wide v7, 0x406fe00000000000L    # 255.0

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    .line 378
    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    .line 379
    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    goto :goto_7

    .line 381
    :cond_12
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    iget-wide v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    div-double/2addr v7, v9

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    .line 382
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    iget-wide v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    div-double/2addr v7, v9

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    .line 383
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    iget-wide v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    div-double/2addr v7, v9

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    .line 387
    :goto_7
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    iget v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    neg-int v9, v9

    int-to-double v9, v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_14

    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    iget v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    int-to-double v11, v11

    sub-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v7, v7, v9

    if-lez v7, :cond_13

    goto :goto_8

    :cond_13
    const/4 v12, 0x1

    goto :goto_9

    .line 388
    :cond_14
    :goto_8
    iget-boolean v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    if-eqz v7, :cond_15

    .line 389
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isDiffInvalid:Z

    .line 391
    iget v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    neg-int v7, v7

    int-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    .line 392
    iget v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    int-to-double v7, v7

    iput-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    goto :goto_9

    .line 388
    :cond_15
    const/4 v12, 0x1

    .line 402
    :goto_9
    iget-wide v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    neg-double v7, v7

    double-to-float v7, v7

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->setFinalAoaAzimuth(F)V

    .line 403
    iget-wide v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    double-to-float v7, v9

    invoke-virtual {v8, v7}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->setFinalAoaElevation(F)V

    .line 408
    sget-object v7, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PostProcessing Input & Output: Target "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getMacAddress()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " distance "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDistance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AoA1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoa:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PDoA1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoa1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pdoa1idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoaIndex1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AoA2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAoaEl:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PDoA2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoa2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pdoa2idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoaIndex2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx1mainidx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mMainIndex1:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx1firstidx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFirstIndex1:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx1snrmain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrMain1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx1snrfirst "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrFirst1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx2mainidx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mMainIndex2:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx2firstidx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFirstIndex2:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx2snrmain "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrMain2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rx2snrfirst "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrFirst2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Orientation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    aget v10, v10, v29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    aget v11, v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mOrientation:[F

    aget v10, v10, v30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Accelerometer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mAccelerometer:[F

    aget v10, v10, v29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Consumed Time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Range "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRange:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " FOV "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalOutputAzimuth "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputAzimuth:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalOutputElevation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputElevation:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalAzimuth "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalElevation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalOutputAzimuthConfidence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputAzimuthConfidence:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalOutputErrorElevation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputErrorElevation:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finalOutputRangeConfidence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->finalOutputRangeConfidence:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mDistance2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDistance2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v7, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PostProcessing Coordinate X : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputXCoord:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Y :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputYCoord:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Z :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFinalOutputZCoord:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 342
    .end local v1    # "startTime":J
    .end local v3    # "timeElapsed":J
    .end local v5    # "finalAzimuth":I
    .end local v6    # "finalElevation":I
    .restart local v4    # "startTime":J
    :cond_16
    return-void
.end method

.method public getParam(I)D
    .locals 2
    .param p1, "param_idx"    # I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getStandardTargetCoordinate(DDD)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;
    .locals 17
    .param p1, "range"    # D
    .param p3, "aoa1"    # D
    .param p5, "aoa2"    # D

    .line 452
    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;-><init>()V

    .line 453
    .local v1, "pc_ant":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;
    new-instance v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    invoke-direct {v2}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;-><init>()V

    .line 454
    .local v2, "pc_phone":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;
    const-wide v3, 0x4056800000000000L    # 90.0

    sub-double v5, v3, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 455
    .local v5, "alpha1_rad":D
    sub-double v3, v3, p5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 456
    .local v3, "alpha2_rad":D
    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-wide v7, v7, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->beta1:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 457
    .local v7, "beta1_rad":D
    iget-object v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-wide v9, v9, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->beta2:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 458
    .local v9, "beta2_rad":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double v11, v11, p1

    sub-double v13, v9, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    iput-wide v11, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    .line 459
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double v11, v11, p1

    sub-double v13, v9, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    iput-wide v11, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    .line 461
    iget-wide v11, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    iget-wide v13, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    mul-double/2addr v11, v13

    iget-wide v13, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    move-wide v15, v3

    .end local v3    # "alpha2_rad":D
    .local v15, "alpha2_rad":D
    iget-wide v3, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    mul-double/2addr v13, v3

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpg-double v3, p1, v3

    if-gez v3, :cond_0

    .line 462
    const-wide v3, -0x3f3c780000000000L    # -10000.0

    iput-wide v3, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    goto :goto_0

    .line 464
    :cond_0
    mul-double v3, p1, p1

    iget-wide v11, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    iget-wide v13, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    mul-double/2addr v11, v13

    sub-double/2addr v3, v11

    iget-wide v11, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    iget-wide v13, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    mul-double/2addr v11, v13

    sub-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    neg-double v3, v3

    iput-wide v3, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    .line 467
    :goto_0
    iget-wide v3, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    iget-object v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-wide v11, v11, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->xIO:D

    sub-double/2addr v3, v11

    iput-wide v3, v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    .line 468
    iget-wide v3, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    iget-object v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mDeviceParams:Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;

    iget-wide v11, v11, Lcom/samsung/android/server/uwb/postprocessor/DeviceParams;->yIO:D

    sub-double/2addr v3, v11

    iput-wide v3, v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    .line 469
    iget-wide v3, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    iput-wide v3, v2, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    .line 471
    return-object v2
.end method

.method public initFilter()V
    .locals 8

    .line 780
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 781
    return-void

    .line 784
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    iget-wide v4, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    iget-wide v6, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->getStandardTargetCoordinate(DDD)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    move-result-object v0

    .line 785
    .local v0, "pc":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;
    iget-object v2, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->x_coord:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 786
    iget-object v2, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->y_coord:D

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 787
    iget-object v2, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v3, 0x2

    iget-wide v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    invoke-virtual {v2, v3, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 789
    iput-boolean v5, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isEkfRunning:Z

    .line 790
    return-void
.end method

.method public initPdoaInfo(IIII)V
    .locals 0
    .param p1, "pdoa1"    # I
    .param p2, "pdoa2"    # I
    .param p3, "pdoaIndex1"    # I
    .param p4, "pdoaIndex2"    # I

    .line 925
    iput p1, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoa1:I

    .line 926
    iput p2, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoa2:I

    .line 927
    iput p3, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoaIndex1:I

    .line 928
    iput p4, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mPdoaIndex2:I

    .line 929
    return-void
.end method

.method public initRframeMeasures(Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;)V
    .locals 3
    .param p1, "specificDataForTwr"    # Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    .line 932
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getSnrFirst()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrFirst1:I

    .line 933
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getSnrMain()[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrMain1:I

    .line 934
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getSnrFirst()[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrFirst2:I

    .line 935
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getSnrMain()[I

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mSnrMain2:I

    .line 936
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getFirstIndex()[F

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFirstIndex1:F

    .line 937
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getMainIndex()[F

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mMainIndex1:F

    .line 938
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getFirstIndex()[F

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mFirstIndex2:F

    .line 939
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getMainIndex()[F

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->mMainIndex2:F

    .line 940
    return-void
.end method

.method public isMeasurementValid(DDD)Z
    .locals 5
    .param p1, "range"    # D
    .param p3, "aoa1"    # D
    .param p5, "aoa2"    # D

    .line 475
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->getStandardTargetCoordinate(DDD)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    move-result-object v0

    .line 476
    .local v0, "pc":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;->z_coord:D

    const-wide v3, -0x3f3c788000000000L    # -9999.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public sensorFusion()V
    .locals 29

    .line 833
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    const-wide/16 v7, 0x0

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_0

    .line 834
    return-void

    .line 838
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isUsingImuInSensorFusion:Z

    if-eqz v1, :cond_1

    .line 839
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevAbsoluteRotationAngleAboutY:D

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutY:D

    sub-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    .line 840
    .local v1, "thetaY":D
    iget-wide v9, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->prevAbsoluteRotationAngleAboutX:D

    iget-wide v11, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->curAbsoluteRotationAngleAboutX:D

    sub-double/2addr v9, v11

    mul-double/2addr v9, v3

    div-double/2addr v9, v5

    move-wide v11, v9

    move-wide v9, v1

    .local v9, "thetaX":D
    goto :goto_0

    .line 842
    .end local v1    # "thetaY":D
    .end local v9    # "thetaX":D
    :cond_1
    const-wide/16 v1, 0x0

    .line 843
    .restart local v1    # "thetaY":D
    const-wide/16 v9, 0x0

    move-wide v11, v9

    move-wide v9, v1

    .line 846
    .end local v1    # "thetaY":D
    .local v9, "thetaY":D
    .local v11, "thetaX":D
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const/4 v13, 0x0

    invoke-interface {v1, v13, v13, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 847
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const/4 v14, 0x2

    invoke-interface {v1, v13, v14, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 848
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-interface {v1, v14, v13, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 849
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-interface {v1, v14, v14, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 851
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const/4 v15, 0x1

    invoke-interface {v1, v15, v15, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 852
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-interface {v1, v15, v14, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 853
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-interface {v1, v14, v15, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 854
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-interface {v1, v14, v14, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 856
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationXMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->rotationYMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->A:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 859
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->A:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    .line 862
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->A:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->A:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 863
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 864
    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 867
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isMeasurementValid(DDD)Z

    move-result v1

    if-nez v1, :cond_2

    .line 868
    return-void

    .line 872
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v13}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedRange:D

    .line 873
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v13}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v14}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    neg-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedAz:D

    .line 874
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5, v13}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    move-wide/from16 v16, v7

    iget-object v7, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7, v14}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedEl:D

    .line 876
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    move-wide v5, v3

    iget-wide v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoa:D

    move-wide v7, v5

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputAoaEl:D

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->getStandardTargetCoordinate(DDD)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->ConvertToSphericalCoordinate(Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointCartesian;)Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;

    move-result-object v1

    .line 877
    .local v1, "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    iget-wide v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->inputRange:D

    .line 878
    .local v2, "measuredRange":D
    iget-wide v4, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;->el:D

    .line 879
    .local v4, "measuredEl":D
    iget-wide v7, v1, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;->az:D

    .line 880
    .local v7, "measuredAz":D
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    iget-wide v14, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedRange:D

    sub-double v14, v2, v14

    invoke-virtual {v6, v13, v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 881
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    iget-wide v14, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedAz:D

    sub-double v14, v7, v14

    const/4 v13, 0x1

    invoke-virtual {v6, v13, v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 882
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    iget-wide v13, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedEl:D

    sub-double v13, v4, v13

    const/4 v15, 0x2

    invoke-virtual {v6, v15, v13, v14}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 884
    cmpg-double v6, v2, v16

    if-gtz v6, :cond_3

    .line 885
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    move-wide/from16 v13, v16

    invoke-virtual {v6, v13, v14}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    goto :goto_1

    .line 884
    :cond_3
    move-wide/from16 v13, v16

    .line 892
    :goto_1
    iget-boolean v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->isTargetInFOV:Z

    if-nez v6, :cond_4

    .line 893
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v13, v14}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 897
    :cond_4
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v14

    .line 898
    .local v14, "x":D
    iget-object v6, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v20, v1

    move-wide/from16 v21, v2

    const/4 v13, 0x1

    .end local v1    # "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    .end local v2    # "measuredRange":D
    .local v20, "ps":Lcom/samsung/android/server/uwb/postprocessor/Postprocessor$PointSpherical;
    .local v21, "measuredRange":D
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    .line 899
    .local v1, "y":D
    iget-object v3, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    move-wide/from16 v23, v4

    const/4 v6, 0x2

    .end local v4    # "measuredEl":D
    .local v23, "measuredEl":D
    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    .line 901
    .local v3, "z":D
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    add-double v18, v18, v25

    .line 902
    .local v18, "temp1":D
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double v25, v25, v5

    .line 904
    .local v25, "temp2":D
    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    move-wide/from16 v27, v1

    .end local v1    # "y":D
    .local v27, "y":D
    iget-wide v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedRange:D

    div-double v1, v14, v1

    const/4 v13, 0x0

    invoke-interface {v5, v13, v13, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 905
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedRange:D

    div-double v5, v27, v5

    const/4 v2, 0x1

    invoke-interface {v1, v13, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 906
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->predictedRange:D

    div-double v5, v3, v5

    const/4 v2, 0x2

    invoke-interface {v1, v13, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 907
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    neg-double v5, v3

    div-double v5, v5, v18

    const/4 v2, 0x1

    invoke-interface {v1, v2, v13, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 908
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v2, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 909
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    div-double v5, v14, v18

    const/4 v13, 0x2

    invoke-interface {v1, v2, v13, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 910
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    neg-double v5, v14

    mul-double v5, v5, v27

    div-double v5, v5, v25

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    div-double v5, v5, v16

    const/4 v2, 0x0

    invoke-interface {v1, v13, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 911
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v5, v5, v25

    const/4 v2, 0x1

    invoke-interface {v1, v13, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 912
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    neg-double v5, v3

    mul-double v5, v5, v27

    div-double v5, v5, v25

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    div-double v5, v5, v16

    invoke-interface {v1, v13, v13, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 915
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->measNoiseCovMat:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kg_denom:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 916
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kg_num:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 917
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kg_num:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kg_denom:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->inverse(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kalmanGain:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 920
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kalmanGain:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->innovation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->stateEstimate:Lorg/apache/commons/math3/linear/RealVector;

    .line 921
    iget-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->eye:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->kalmanGain:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->errorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 922
    return-void
.end method

.method public setParam(ID)V
    .locals 1
    .param p1, "param_idx"    # I
    .param p2, "val"    # D

    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/Postprocessor;->PARAMS:[D

    aput-wide p2, v0, p1

    .line 165
    return-void
.end method
