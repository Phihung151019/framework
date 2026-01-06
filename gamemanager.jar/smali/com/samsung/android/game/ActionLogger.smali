.class public Lcom/samsung/android/game/ActionLogger;
.super Ljava/lang/Object;
.source "ActionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    }
.end annotation


# static fields
.field private static final lastActionLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/game/ActionLogger$ActionLogTag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/game/ActionLogger;->lastActionLogMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/game/data/DatabaseHelper;)V
    .locals 0
    .param p1, "databaseHelper"    # Lcom/samsung/android/game/data/DatabaseHelper;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/game/ActionLogger;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    .line 25
    return-void
.end method

.method private addActionLogIfChanged(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J
    .locals 2
    .param p1, "tag"    # Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .param p2, "msg"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ActionLogger;->isDuplicatedWithLastLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-wide/16 v0, 0x0

    return-wide v0

    .line 51
    :cond_0
    sget-object v0, Lcom/samsung/android/game/ActionLogger;->lastActionLogMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/game/ActionLogger;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {p1}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/game/data/DatabaseHelper;->addActionLog(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private addActionLogSimply(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J
    .locals 2
    .param p1, "tag"    # Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .param p2, "msg"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/game/ActionLogger;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {p1}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/game/data/DatabaseHelper;->addActionLog(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private isDuplicatedWithLastLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .param p2, "msg"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/samsung/android/game/ActionLogger;->lastActionLogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDuplicationCheckNecessary(Lcom/samsung/android/game/ActionLogger$ActionLogTag;)Z
    .locals 1
    .param p1, "tag"    # Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 42
    sget-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J
    .locals 2
    .param p1, "tag"    # Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .param p2, "msg"    # Ljava/lang/String;

    .line 32
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/game/ActionLogger;->isDuplicationCheckNecessary(Lcom/samsung/android/game/ActionLogger$ActionLogTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ActionLogger;->addActionLogIfChanged(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 38
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/ActionLogger;->addActionLogSimply(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 33
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public addActionLogs(Lcom/samsung/android/game/ActionLogger$ActionLogTag;[Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .param p2, "msgList"    # [Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/game/ActionLogger;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {p1}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/game/data/DatabaseHelper;->addActionLogs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    return-void
.end method
