.class Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.ScanMatcher"


# instance fields
.field private mLastBssidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field final mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

.field private mWatchingConfigKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatchingConfigKey(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mWatchingConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastBssidList(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$1;-><init>(Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 12
    .line 13
    return-void
.end method

.method private declared-synchronized getBestAlternativeBssidExcept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-le v1, v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v1, -0xc8

    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sub-int/2addr v4, v2

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    sub-int/2addr v6, v2

    .line 57
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    if-le v4, v1, :cond_0

    .line 78
    .line 79
    move-object v0, v3

    .line 80
    move v1, v4

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    monitor-exit p0

    .line 85
    return-object v0

    .line 86
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p1
.end method


# virtual methods
.method declared-synchronized findBssidFromScanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->generatePBssid(Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    iget-object p1, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-object p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :try_start_1
    const-string v0, "WifiProfileShare.ScanMatcher"

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "can not find network "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    monitor-exit p0

    .line 86
    const/4 p0, 0x0

    .line 87
    return-object p0

    .line 88
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p1
.end method

.method declared-synchronized getConfigKeyForPassword(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x2

    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p2, 0x0

    .line 35
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-object p1

    .line 43
    :cond_1
    monitor-exit p0

    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p1
.end method

.method declared-synchronized getConfigKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method getMcfDataForRequestingPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ""

    .line 7
    .line 8
    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getBestAlternativeBssidExcept(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->setRoamBssid(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object v0

    .line 22
    :cond_2
    :goto_0
    const-string p0, "WifiProfileShare.ScanMatcher"

    .line 23
    .line 24
    const-string p1, "getMcfDataForRequestingPassword - request configKey is null"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method declared-synchronized getMcfDataListForSharingPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const-string p1, "WifiProfileShare.ScanMatcher"

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "getMcfDataList size:"

    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-object v0

    .line 71
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p1
.end method

.method registerBssidListChangedListener(Ljava/lang/String;Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mWatchingConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getBssidList(Ljava/lang/String;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method unregisterBssidListChangedListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mScanPoolListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->unregisterScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mWatchingConfigKey:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mLastBssidList:Ljava/util/Set;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->mListener:Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;

    .line 14
    .line 15
    return-void
.end method
