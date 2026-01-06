.class public final enum Lcom/samsung/android/wifi/intelligence/ins/entity/Label;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wifi/intelligence/ins/entity/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

.field public static final enum DEFAULT:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

.field public static final enum LQ_CALLBACK_REVERTED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

.field public static final enum LQ_CALLBACK_TRIGGERED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->DEFAULT:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 13
    .line 14
    const-string v3, "LQ_CALLBACK_REVERTED"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->LQ_CALLBACK_REVERTED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 21
    .line 22
    new-instance v2, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 23
    .line 24
    const-string v3, "LQ_CALLBACK_TRIGGERED"

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->LQ_CALLBACK_TRIGGERED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 31
    .line 32
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->$VALUES:[Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 37
    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/wifi/intelligence/ins/entity/Label;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/wifi/intelligence/ins/entity/Label;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->$VALUES:[Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->value:I

    .line 2
    .line 3
    return p0
.end method
