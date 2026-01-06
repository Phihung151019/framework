.class public final enum Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LSOItemText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LSOTextSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum greylist HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum greylist LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum greylist NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum greylist SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

.field public static final enum greylist TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;


# instance fields
.field public final greylist nativeVal:F


# direct methods
.method public static synthetic greylist $values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    sget-object v3, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    sget-object v4, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const/4 v1, 0x0

    const v2, 0x3f59999a    # 0.85f

    const-string v3, "TINY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->TINY:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const/4 v1, 0x1

    const v2, 0x3f6e147b    # 0.93f

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->NORMAL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const/4 v1, 0x3

    const v2, 0x3fa66666    # 1.3f

    const-string v3, "LARGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    const/4 v1, 0x4

    const v2, 0x3fe66666    # 1.8f

    const-string v3, "HUGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->HUGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;IF)V
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
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->$VALUES:[Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    return-object v0
.end method
