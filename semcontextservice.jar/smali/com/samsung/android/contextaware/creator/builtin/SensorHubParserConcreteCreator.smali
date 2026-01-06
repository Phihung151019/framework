.class public Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;
.super Ljava/lang/Object;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    }
.end annotation


# static fields
.field private static sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsPowerResetNotiObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsPowerResetNotiObservable(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->create()V

    .line 126
    return-void
.end method

.method private create()V
    .locals 5

    .line 132
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->initialize(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->values()[Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    .local v3, "i":Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    iget-object v4, p0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->createObj(Landroid/content/Context;)V

    .line 133
    .end local v3    # "i":Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public final getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .line 144
    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->sPowerResetNotiObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    return-object v0
.end method
