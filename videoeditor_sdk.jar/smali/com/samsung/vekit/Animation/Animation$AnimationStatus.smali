.class public final enum Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
.super Ljava/lang/Enum;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Animation/Animation$AnimationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

.field public static final enum ANIMATING:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

.field public static final enum CANCELED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

.field public static final enum FINISHED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

.field public static final enum INITIALIZED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

.field public static final enum STARTED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;


# direct methods
.method private static synthetic $values()[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
    .locals 5

    .line 20
    sget-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->INITIALIZED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    sget-object v1, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->STARTED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    sget-object v2, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->ANIMATING:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    sget-object v3, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->CANCELED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    sget-object v4, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->FINISHED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->INITIALIZED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    .line 22
    new-instance v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->STARTED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    .line 23
    new-instance v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    const-string v1, "ANIMATING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->ANIMATING:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    .line 24
    new-instance v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    const-string v1, "CANCELED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->CANCELED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    .line 25
    new-instance v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    const-string v1, "FINISHED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->FINISHED:Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    .line 20
    invoke-static {}, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->$values()[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->$VALUES:[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->$VALUES:[Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Animation/Animation$AnimationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Animation/Animation$AnimationStatus;

    return-object v0
.end method
