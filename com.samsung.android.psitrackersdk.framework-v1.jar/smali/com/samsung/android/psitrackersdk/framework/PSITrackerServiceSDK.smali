.class public Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;
.super Ljava/lang/Object;
.source "PSITrackerServiceSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PSITrackerServiceSDK"

.field private static final VERSION:Ljava/lang/String; = "1.0.4"


# instance fields
.field private mChimeraMemManager:Lcom/samsung/android/chimera/ChimeraMemManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/samsung/android/chimera/ChimeraMemManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/chimera/ChimeraMemManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;->mChimeraMemManager:Lcom/samsung/android/chimera/ChimeraMemManager;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after check pts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;->mChimeraMemManager:Lcom/samsung/android/chimera/ChimeraMemManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSITrackerServiceSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "1.0.4"

    return-object v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 26
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getAvailableMemInfo(JJ)Ljava/util/List;
    .locals 18
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 36
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;>;"
    move-object/from16 v2, p0

    :try_start_0
    iget-object v0, v2, Lcom/samsung/android/psitrackersdk/framework/PSITrackerServiceSDK;->mChimeraMemManager:Lcom/samsung/android/chimera/ChimeraMemManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    :try_start_1
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/chimera/ChimeraMemManager;->getAvailableMemInfo(JJ)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "fromList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/chimera/PSIAvailableMem;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 38
    new-instance v9, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    .line 39
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/chimera/PSIAvailableMem;

    invoke-virtual {v8}, Lcom/samsung/android/chimera/PSIAvailableMem;->getAvailMem()J

    move-result-wide v10

    .line 40
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/chimera/PSIAvailableMem;

    invoke-virtual {v8}, Lcom/samsung/android/chimera/PSIAvailableMem;->getRunning()J

    move-result-wide v12

    .line 41
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/chimera/PSIAvailableMem;

    invoke-virtual {v8}, Lcom/samsung/android/chimera/PSIAvailableMem;->getCached()J

    move-result-wide v14

    .line 42
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/chimera/PSIAvailableMem;

    invoke-virtual {v8}, Lcom/samsung/android/chimera/PSIAvailableMem;->getCheckTime()J

    move-result-wide v16

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;-><init>(JJJJ)V

    .line 38
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "fromList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/chimera/PSIAvailableMem;>;"
    .end local v7    # "i":I
    :cond_0
    goto :goto_2

    .line 44
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method
