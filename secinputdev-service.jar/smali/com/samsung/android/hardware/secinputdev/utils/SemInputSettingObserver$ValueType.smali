.class final enum Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;
.super Ljava/lang/Enum;
.source "SemInputSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

.field public static final enum INTEGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

.field public static final enum STRING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;
    .locals 2

    .line 71
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->INTEGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->STRING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->INTEGER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->STRING:Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    .line 71
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->$values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;
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

    .line 71
    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;
    .locals 1

    .line 71
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputSettingObserver$ValueType;

    return-object v0
.end method
