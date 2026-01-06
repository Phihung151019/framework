.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;
.super Ljava/lang/Object;
.source "SemInputDeviceHqmHelper.java"


# static fields
.field private static final BIG_DATA:[Ljava/lang/String;

.field private static final HQMCASEALISTITEMCOUNT:I = 0x5

.field private static final HQMCASEALISTLENGTH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceHqmHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "CASA"

    const-string v1, "CASB"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->BIG_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, "size":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "obj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 77
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_0
    nop

    .line 83
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 79
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SemInputDeviceHqmHelper"

    const-string v3, "convertToBigDataFormat"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$printTopCount$0(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "e1"    # Ljava/lang/Integer;
    .param p1, "e2"    # Ljava/lang/Integer;

    .line 37
    return-object p0
.end method

.method private printTopCount(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;
    .locals 8
    .param p1, "data"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 29
    const-string v0, ""

    .line 30
    .local v0, "strListResult":Ljava/lang/String;
    const-string v1, ""

    .line 32
    .local v1, "strCaseAHqmList":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->getCaseAMap()Ljava/util/Map;

    move-result-object v2

    .line 34
    .local v2, "caseAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 35
    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 36
    const-wide/16 v4, 0x5

    invoke-interface {v3, v4, v5}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v6, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v7, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 37
    invoke-static {v4, v5, v6, v7}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 39
    .local v3, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 41
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 44
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    const-string v4, ".$"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3e6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"CSAL\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    const-string v1, "\"CSAL\":\"\""

    .line 52
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Print HQM DATA strCaseAHqmList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemInputDeviceHqmHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object v1
.end method

.method private sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;
    .locals 5
    .param p3, "data"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 87
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "basic_customDataSet":Ljava/lang/String;
    const-string v1, ""

    .line 90
    .local v1, "strHqmResultVal":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 91
    const-string v2, "null"

    return-object v2

    .line 94
    :cond_0
    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->printTopCount(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    return-object v1
.end method


# virtual methods
.method public sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->BIG_DATA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 62
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->BIG_DATA:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->get(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "strVal":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 64
    sget-object v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->BIG_DATA:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
