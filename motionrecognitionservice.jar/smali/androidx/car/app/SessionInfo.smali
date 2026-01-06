.class public Landroidx/car/app/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/SessionInfo$DisplayType;
    }
.end annotation


# static fields
.field private static final CLUSTER_SUPPORTED_TEMPLATES_API_6:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final CLUSTER_SUPPORTED_TEMPLATES_LESS_THAN_API_6:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SESSION_INFO:Landroidx/car/app/SessionInfo;

.field public static final DISPLAY_TYPE_CLUSTER:I = 0x1

.field public static final DISPLAY_TYPE_MAIN:I = 0x0

.field private static final DIVIDER:C = '/'


# instance fields
.field private final mDisplayType:I

.field private final mSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const-class v0, Landroidx/car/app/navigation/model/NavigationTemplate;

    .line 54
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/car/app/SessionInfo;->CLUSTER_SUPPORTED_TEMPLATES_API_6:Lcom/google/common/collect/ImmutableSet;

    .line 56
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/car/app/SessionInfo;->CLUSTER_SUPPORTED_TEMPLATES_LESS_THAN_API_6:Lcom/google/common/collect/ImmutableSet;

    .line 69
    new-instance v0, Landroidx/car/app/SessionInfo;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Landroidx/car/app/SessionInfo;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/car/app/SessionInfo;->DEFAULT_SESSION_INFO:Landroidx/car/app/SessionInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, "main"

    iput-object v0, p0, Landroidx/car/app/SessionInfo;->mSessionId:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/SessionInfo;->mDisplayType:I

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "displayType"    # I
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroidx/car/app/SessionInfo;->mDisplayType:I

    .line 78
    iput-object p2, p0, Landroidx/car/app/SessionInfo;->mSessionId:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    instance-of v1, p1, Landroidx/car/app/SessionInfo;

    if-nez v1, :cond_1

    .line 145
    return v0

    .line 147
    :cond_1
    const/4 v1, 0x1

    if-ne p1, p0, :cond_2

    .line 148
    return v1

    .line 150
    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/car/app/SessionInfo;

    .line 151
    .local v2, "object":Landroidx/car/app/SessionInfo;
    invoke-virtual {p0}, Landroidx/car/app/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/car/app/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-virtual {p0}, Landroidx/car/app/SessionInfo;->getDisplayType()I

    move-result v3

    invoke-virtual {v2}, Landroidx/car/app/SessionInfo;->getDisplayType()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 151
    :goto_0
    return v0
.end method

.method public getDisplayType()I
    .locals 1

    .line 106
    iget v0, p0, Landroidx/car/app/SessionInfo;->mDisplayType:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/car/app/SessionInfo;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedTemplates(I)Ljava/util/Set;
    .locals 2
    .param p1, "carAppApiLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/car/app/model/Template;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget v0, p0, Landroidx/car/app/SessionInfo;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    .line 119
    sget-object v0, Landroidx/car/app/SessionInfo;->CLUSTER_SUPPORTED_TEMPLATES_API_6:Lcom/google/common/collect/ImmutableSet;

    return-object v0

    .line 122
    :cond_0
    sget-object v0, Landroidx/car/app/SessionInfo;->CLUSTER_SUPPORTED_TEMPLATES_LESS_THAN_API_6:Lcom/google/common/collect/ImmutableSet;

    return-object v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/car/app/SessionInfo;->mSessionId:Ljava/lang/String;

    iget v1, p0, Landroidx/car/app/SessionInfo;->mDisplayType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/car/app/SessionInfo;->mDisplayType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/SessionInfo;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
