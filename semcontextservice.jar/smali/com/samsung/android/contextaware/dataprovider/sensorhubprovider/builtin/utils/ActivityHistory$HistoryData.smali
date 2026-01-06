.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
.super Ljava/lang/Object;
.source "ActivityHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryData"
.end annotation


# instance fields
.field private accuracy:I

.field private activityType:I

.field private duration:J

.field private timeStamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactivityType(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetduration(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettimeStamp(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputactivityType(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputduration(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeStamp(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->timeStamp:J

    .line 37
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->activityType:I

    .line 38
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->accuracy:I

    .line 39
    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->duration:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;-><init>()V

    return-void
.end method
