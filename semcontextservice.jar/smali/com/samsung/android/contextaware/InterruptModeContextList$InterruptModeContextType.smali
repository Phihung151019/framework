.class public enum Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
.super Ljava/lang/Enum;
.source "InterruptModeContextList.java"

# interfaces
.implements Lcom/samsung/android/contextaware/IParserHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/InterruptModeContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "InterruptModeContextType"
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;",
        ">;",
        "Lcom/samsung/android/contextaware/IParserHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

.field public static final enum SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    filled-new-array {v0}, [Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetcode(Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType$1;

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 44
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/InterruptModeContextList-IA;)V

    sput-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    .line 36
    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->$values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/contextaware/InterruptModeContextList-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    const-class v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->$VALUES:[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getParserHandler()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method
