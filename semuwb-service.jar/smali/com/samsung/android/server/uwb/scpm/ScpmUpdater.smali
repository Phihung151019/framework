.class public Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;
.super Ljava/lang/Object;
.source "ScpmUpdater.java"


# static fields
.field private static final SCPM_STATE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UwbScpmUpdater"


# instance fields
.field private final mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

.field private final mScpmWriter:Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

.field private final mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 29
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DO NOTHING"

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 30
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FAIL"

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 28
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->SCPM_STATE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/lib/platform/api/Scpm;Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)V
    .locals 1
    .param p1, "scpm"    # Lcom/samsung/android/scloud/lib/platform/api/Scpm;
    .param p2, "scpmManager"    # Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    .line 39
    new-instance v0, Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/scpm/ScpmWriter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mScpmWriter:Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

    .line 40
    return-void
.end method

.method private checkScpmState(I)Ljava/lang/String;
    .locals 2
    .param p1, "result"    # I

    .line 75
    sget-object v0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->SCPM_STATE_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->SCPM_STATE_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private isNeedToUpdate(I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "result"    # I

    .line 71
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private updateScpmFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 82
    const/4 v0, 0x1

    .line 84
    .local v0, "isResult":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/uwb/scpm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "UwbScpmUpdater"

    if-nez v2, :cond_0

    .line 86
    const-string v2, "create Folders for Scpm"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "can\'t create Scpm directory"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mScpmWriter:Lcom/samsung/android/server/uwb/scpm/ScpmWriter;

    const-string v4, "/data/uwb/scpm/libuwb-countrycode.conf"

    iget-object v5, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v2, p1, v4, v5}, Lcom/samsung/android/server/uwb/scpm/ScpmWriter;->writeScpmFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)Z

    move-result v0

    goto :goto_1

    .line 98
    :cond_1
    const-string v2, "can\'t update Scpm policy"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_1
    sget-boolean v2, Lcom/samsung/android/server/uwb/scpm/ScpmConstant;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scpm result : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    if-eqz p1, :cond_3

    .line 104
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_2

    .line 108
    :catch_1
    move-exception v2

    goto :goto_3

    .line 107
    :cond_3
    :goto_2
    const-string v2, "File Updated by Scpm"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    goto :goto_4

    .line 109
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method


# virtual methods
.method public updateScpmPolicy()V
    .locals 7

    .line 43
    sget-boolean v0, Lcom/samsung/android/server/uwb/scpm/ScpmConstant;->DBG:Z

    const-string v1, "UwbScpmUpdater"

    if-eqz v0, :cond_0

    const-string v0, "updataScpmPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    const-string v2, "Scpm isn\'t available"

    if-nez v0, :cond_1

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->isScpmAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mScpmApi:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    .line 52
    .local v0, "configuration":Lcom/samsung/android/scloud/lib/platform/api/Configuration;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->getScpmToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UWB_REGULATION"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;->getData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object v2

    .line 53
    .local v2, "dataSet":Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    iget-object v3, v2, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 56
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    iget v4, v2, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->result:I

    invoke-direct {p0, v4}, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->isNeedToUpdate(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-direct {p0, v3}, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->updateScpmFile(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 60
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scpm State : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->result:I

    invoke-direct {p0, v5}, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->checkScpmState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v4

    .line 62
    .local v4, "e":Ljava/util/NoSuchElementException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dataset state :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;->result:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "configuration":Lcom/samsung/android/scloud/lib/platform/api/Configuration;
    .end local v2    # "dataSet":Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_1
    return-void
.end method
