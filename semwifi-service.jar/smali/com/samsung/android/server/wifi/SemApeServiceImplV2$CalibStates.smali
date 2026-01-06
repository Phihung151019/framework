.class final enum Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;
.super Ljava/lang/Enum;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CalibStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field public static final enum RECAL:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field public static final enum RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field public static final enum RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field public static final enum RESTRICT_MORE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field public static final enum RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

.field public static final enum RESTRICT_STRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 6
    .line 7
    sget-object v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_STRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 8
    .line 9
    sget-object v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_MORE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 10
    .line 11
    sget-object v5, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 2
    .line 3
    const-string v1, "RECAL_START"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 12
    .line 13
    const-string v1, "RECAL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 22
    .line 23
    const-string v1, "RESTRICT_START"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 32
    .line 33
    const-string v1, "RESTRICT_STRICT"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_STRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 42
    .line 43
    const-string v1, "RESTRICT_MORE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT_MORE:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 50
    .line 51
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 52
    .line 53
    const-string v1, "RESTRICT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RESTRICT:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 60
    .line 61
    invoke-static {}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->$values()[Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->$VALUES:[Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;
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
    const-class v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->$VALUES:[Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 8
    .line 9
    return-object v0
.end method
