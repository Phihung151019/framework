.class public final enum Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum greylist CPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum greylist DSP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum greylist GPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

.field public static final enum greylist NPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;


# direct methods
.method public static synthetic greylist $values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->CPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->GPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    sget-object v2, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->DSP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    sget-object v3, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->NPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->CPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v1, "GPU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->GPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v1, "DSP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->DSP:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    const-string v1, "NPU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->NPU:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    invoke-static {}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->$values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;I)V
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->$VALUES:[Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;

    return-object v0
.end method


# virtual methods
.method public greylist getValue()I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
