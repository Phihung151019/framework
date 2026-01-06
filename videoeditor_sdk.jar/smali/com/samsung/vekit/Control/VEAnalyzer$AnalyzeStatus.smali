.class public final enum Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
.super Ljava/lang/Enum;
.source "VEAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyzeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum COMPLETED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum FAILED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum PAUSED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum SOLUTION_FAILED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum SOLUTION_LOADED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum SOLUTION_UNLOADED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum STARTED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

.field public static final enum STOPPED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    .locals 9

    .line 21
    sget-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v1, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->STARTED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v2, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->STOPPED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v3, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->FAILED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v4, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->COMPLETED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v5, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->PAUSED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v6, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->SOLUTION_LOADED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v7, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->SOLUTION_UNLOADED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v8, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->SOLUTION_FAILED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    filled-new-array/range {v0 .. v8}, [Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 23
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->STARTED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 24
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->STOPPED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 25
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->FAILED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 26
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->COMPLETED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 27
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->PAUSED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 28
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "SOLUTION_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->SOLUTION_LOADED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 29
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "SOLUTION_UNLOADED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->SOLUTION_UNLOADED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 30
    new-instance v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    const-string v1, "SOLUTION_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->SOLUTION_FAILED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    .line 21
    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->$values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->$VALUES:[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->$VALUES:[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    return-object v0
.end method
