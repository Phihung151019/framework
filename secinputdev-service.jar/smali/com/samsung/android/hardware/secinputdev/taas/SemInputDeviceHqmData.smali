.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;
.super Ljava/lang/Object;
.source "SemInputDeviceHqmData.java"


# static fields
.field public static final CASEA_COUNT:Ljava/lang/String; = "casa"

.field public static final CASEB_COUNT:Ljava/lang/String; = "casb"

.field private static final CASE_PATH:Ljava/lang/String; = "/data/vendor/taas/"

.field private static final TAAS_EFS_MAX_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceHqmData"


# instance fields
.field private caseAMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCaseACount:I

.field private mCaseACountHqm:I

.field private mCaseBCount:I

.field private mCaseBCountHqm:I

.field private mLoggingData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private taas:Lcom/samsung/android/hardware/secinputdev/device/Taas;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 35
    const-string v0, "SemInputDeviceHqmData"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    .line 22
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    .line 23
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    .line 24
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    .line 26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 29
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->taas:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    .line 36
    const-string v2, "TAAS"

    const/16 v3, 0x29

    const-string v4, "NG"

    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->create(Ljava/lang/String;IILjava/lang/String;)Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/device/Taas;

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->taas:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->taas:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/device/Taas;->read()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "casStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 46
    .local v2, "stk":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    .line 47
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: mCase1Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCase2Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .end local v2    # "stk":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "parseInt"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    .end local v1    # "casStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_2

    .line 40
    .restart local v1    # "casStr":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v2, "readTaas init failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    return-void

    .line 52
    .end local v1    # "casStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "init: failed to set initial value"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "init"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private isValueMatched(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    .line 61
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 141
    return-void
.end method

.method public get(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 135
    return v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCaseACountHqm()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    return v0
.end method

.method public getCaseAMap()Ljava/util/Map;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCaseBCountHqm()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    return v0
.end method

.method public getTaas()Lcom/samsung/android/hardware/secinputdev/device/Taas;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->taas:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    return-object v0
.end method

.method public setCaseACount(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 74
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    const/4 v1, 0x1

    const v2, 0x7fffff9b

    if-lt v0, v2, :cond_0

    .line 75
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACountHqm:I

    .line 80
    :goto_0
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1

    .line 81
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    goto :goto_1

    .line 83
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->isValueMatched(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caseAMap.size is full!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceHqmData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 87
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->caseAMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 91
    :goto_3
    return-void
.end method

.method public setCaseBCount()V
    .locals 2

    .line 94
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    const v1, 0x7fffff9b

    if-lt v0, v1, :cond_0

    .line 95
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCountHqm:I

    .line 100
    :goto_0
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 101
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    goto :goto_1

    .line 103
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    .line 105
    :goto_1
    return-void
.end method

.method public setLoggingData(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mLoggingData:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public writeForCaseToEfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "getTime"    # Ljava/lang/String;
    .param p2, "TaasLog"    # Ljava/lang/String;
    .param p3, "taasCase"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "tempStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseCount mCaseACount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseACount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCaseBCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->mCaseBCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputDeviceHqmData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->taas:Lcom/samsung/android/hardware/secinputdev/device/Taas;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Taas;->write(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 121
    const-string v1, "writeTaas error caseA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method
