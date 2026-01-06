.class final enum Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;
.super Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getObject()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 7

    .line 71
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/WpsRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1100()I

    move-result v3

    .line 74
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1200()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1300()Landroid/os/Looper;

    move-result-object v5

    .line 75
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1400()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/WpsRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator$AndroidRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-object v0
.end method

.method public final getObjectForSubCollection()Lcom/samsung/android/contextaware/manager/ContextComponent;
    .locals 5

    .line 82
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/WpsRunner;

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1700()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1800()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;->access$1900()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/WpsRunner;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-object v0
.end method
