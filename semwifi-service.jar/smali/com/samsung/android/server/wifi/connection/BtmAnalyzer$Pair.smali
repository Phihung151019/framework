.class final Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;
.super Ljava/lang/Record;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/connection/BtmAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "time",
        "count"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        J,
        I
    }
.end annotation


# instance fields
.field private final count:I

.field private final time:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcount(Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method synthetic constructor <init>(IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p1}, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;-><init>(JI)V

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "count"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    iput p3, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    return-void
.end method


# virtual methods
.method public count()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    .line 8
    .line 9
    iget v1, p1, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    .line 14
    .line 15
    iget-wide p0, p1, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    .line 16
    .line 17
    cmp-long p0, v0, p0

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->time:J

    .line 4
    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;->count:I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object v2, v3, v0

    .line 19
    .line 20
    aput-object p0, v3, v1

    .line 21
    .line 22
    const-class p0, Lcom/samsung/android/server/wifi/connection/BtmAnalyzer$Pair;

    .line 23
    .line 24
    const-string v2, "time;count"

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    new-array v2, v0, [Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v4, ";"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "["

    .line 54
    .line 55
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :goto_1
    array-length p0, v2

    .line 59
    if-ge v0, p0, :cond_2

    .line 60
    .line 61
    aget-object p0, v2, v0

    .line 62
    .line 63
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "="

    .line 67
    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    aget-object p0, v3, v0

    .line 72
    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    array-length p0, v2

    .line 77
    sub-int/2addr p0, v1

    .line 78
    if-eq v0, p0, :cond_1

    .line 79
    .line 80
    const-string p0, ", "

    .line 81
    .line 82
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_1
    add-int/2addr v0, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string p0, "]"

    .line 88
    .line 89
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
