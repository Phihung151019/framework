.class public final Landroidx/car/app/hardware/info/Model$Builder;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/hardware/info/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mManufacturer:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mName:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mYear:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_STRING:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Model$Builder;->mName:Landroidx/car/app/hardware/common/CarValue;

    .line 105
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Model$Builder;->mYear:Landroidx/car/app/hardware/common/CarValue;

    .line 106
    sget-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_STRING:Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Model$Builder;->mManufacturer:Landroidx/car/app/hardware/common/CarValue;

    return-void
.end method


# virtual methods
.method public build()Landroidx/car/app/hardware/info/Model;
    .locals 1

    .line 146
    new-instance v0, Landroidx/car/app/hardware/info/Model;

    invoke-direct {v0, p0}, Landroidx/car/app/hardware/info/Model;-><init>(Landroidx/car/app/hardware/info/Model$Builder;)V

    return-object v0
.end method

.method public setManufacturer(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Model$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/car/app/hardware/info/Model$Builder;"
        }
    .end annotation

    .line 137
    .local p1, "manufacturer":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Model$Builder;->mManufacturer:Landroidx/car/app/hardware/common/CarValue;

    .line 138
    return-object p0
.end method

.method public setName(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Model$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/car/app/hardware/info/Model$Builder;"
        }
    .end annotation

    .line 115
    .local p1, "name":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Model$Builder;->mName:Landroidx/car/app/hardware/common/CarValue;

    .line 116
    return-object p0
.end method

.method public setYear(Landroidx/car/app/hardware/common/CarValue;)Landroidx/car/app/hardware/info/Model$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/car/app/hardware/info/Model$Builder;"
        }
    .end annotation

    .line 126
    .local p1, "year":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/hardware/common/CarValue;

    iput-object v0, p0, Landroidx/car/app/hardware/info/Model$Builder;->mYear:Landroidx/car/app/hardware/common/CarValue;

    .line 127
    return-object p0
.end method
