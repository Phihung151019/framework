.class final Lcom/samsung/android/game/notification/GameEventFilter;
.super Ljava/lang/Record;
.source "GameEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "targetEvents",
        "targetAllUsersEnabled",
        "targetPackageNames"
    }
    componentSignatures = {
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/List<",
                "Ljava/lang/Integer;",
                ">;"
            }
        .end subannotation,
        null,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/List<",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Ljava/util/List;,
        Z,
        Ljava/util/List;
    }
.end annotation


# instance fields
.field private final targetAllUsersEnabled:Z

.field private final targetEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/game/notification/GameEventFilter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/game/notification/GameEventFilter;

    iget-boolean v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    iget-boolean v1, p1, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    iget-object v1, p1, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    iget-boolean v1, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/util/List;ZLjava/util/List;)V
    .locals 0
    .param p2, "targetAllUsersEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetEvents",
            "targetAllUsersEnabled",
            "targetPackageNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    .local p1, "targetEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    iput-boolean p2, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    iput-object p3, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/game/notification/GameEventFilter;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTargetInfo()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetAllUsersEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetPackageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/notification/GameEventFilter$$ExternalSyntheticRecord1;->m(ZLjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public targetAllUsersEnabled()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetAllUsersEnabled:Z

    return v0
.end method

.method public targetEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetEvents:Ljava/util/List;

    return-object v0
.end method

.method public targetPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/samsung/android/game/notification/GameEventFilter;->targetPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/game/notification/GameEventFilter;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/samsung/android/game/notification/GameEventFilter;

    const-string v2, "targetEvents;targetAllUsersEnabled;targetPackageNames"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/notification/GameEventFilter$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
