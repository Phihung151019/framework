.class public final Landroidx/car/app/model/CarIconSpan;
.super Landroidx/car/app/model/CarSpan;
.source "CarIconSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/CarIconSpan$Alignment;
    }
.end annotation


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2


# instance fields
.field private final mAlignment:I

.field private final mIcon:Landroidx/car/app/model/CarIcon;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/CarIconSpan;->mAlignment:I

    .line 150
    return-void
.end method

.method private constructor <init>(Landroidx/car/app/model/CarIcon;I)V
    .locals 0
    .param p1, "icon"    # Landroidx/car/app/model/CarIcon;
    .param p2, "alignment"    # I

    .line 142
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 143
    iput-object p1, p0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    .line 144
    iput p2, p0, Landroidx/car/app/model/CarIconSpan;->mAlignment:I

    .line 145
    return-void
.end method

.method private static alignmentToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "alignment"    # I

    .line 193
    packed-switch p0, :pswitch_data_0

    .line 201
    const-string v0, "unknown"

    return-object v0

    .line 199
    :pswitch_0
    const-string v0, "center"

    return-object v0

    .line 195
    :pswitch_1
    const-string v0, "baseline"

    return-object v0

    .line 197
    :pswitch_2
    const-string v0, "bottom"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroidx/car/app/model/CarIcon;)Landroidx/car/app/model/CarIconSpan;
    .locals 1
    .param p0, "icon"    # Landroidx/car/app/model/CarIcon;

    .line 115
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/car/app/model/CarIconSpan;->create(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/CarIconSpan;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroidx/car/app/model/CarIcon;I)Landroidx/car/app/model/CarIconSpan;
    .locals 3
    .param p0, "icon"    # Landroidx/car/app/model/CarIcon;
    .param p1, "alignment"    # I

    .line 134
    sget-object v0, Landroidx/car/app/model/constraints/CarIconConstraints;->DEFAULT:Landroidx/car/app/model/constraints/CarIconConstraints;

    invoke-virtual {v0, p0}, Landroidx/car/app/model/constraints/CarIconConstraints;->validateOrThrow(Landroidx/car/app/model/CarIcon;)V

    .line 135
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    :goto_0
    new-instance v0, Landroidx/car/app/model/CarIconSpan;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    invoke-direct {v0, v1, p1}, Landroidx/car/app/model/CarIconSpan;-><init>(Landroidx/car/app/model/CarIcon;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 181
    if-ne p0, p1, :cond_0

    .line 182
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/CarIconSpan;

    if-nez v0, :cond_1

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/CarIconSpan;

    .line 189
    .local v0, "otherIconSpan":Landroidx/car/app/model/CarIconSpan;
    iget-object v1, p0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    iget-object v2, v0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAlignment()I
    .locals 1

    .line 165
    iget v0, p0, Landroidx/car/app/model/CarIconSpan;->mAlignment:I

    return v0
.end method

.method public getIcon()Landroidx/car/app/model/CarIcon;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarIcon;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/CarIconSpan;->mIcon:Landroidx/car/app/model/CarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarIconSpan;->mAlignment:I

    invoke-static {v1}, Landroidx/car/app/model/CarIconSpan;->alignmentToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
