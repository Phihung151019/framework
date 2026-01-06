.class public final Landroidx/car/app/hardware/common/CarValue;
.super Ljava/lang/Object;
.source "CarValue.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/common/CarValue$StatusCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3

.field public static final STATUS_UNIMPLEMENTED:I = 0x2

.field public static final STATUS_UNKNOWN:I

.field public static final UNIMPLEMENTED_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final UNIMPLEMENTED_INTEGER:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_STRING:Landroidx/car/app/hardware/common/CarValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/car/app/hardware/common/CarValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatus:I

.field private final mTimestampMillis:J

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unimplemented()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNIMPLEMENTED_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    .line 112
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER:Landroidx/car/app/hardware/common/CarValue;

    .line 115
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_BOOLEAN:Landroidx/car/app/hardware/common/CarValue;

    .line 118
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT:Landroidx/car/app/hardware/common/CarValue;

    .line 121
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_STRING:Landroidx/car/app/hardware/common/CarValue;

    .line 124
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unimplemented()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNIMPLEMENTED_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;

    .line 127
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_FLOAT_LIST:Landroidx/car/app/hardware/common/CarValue;

    .line 130
    invoke-static {}, Landroidx/car/app/hardware/common/CarValue;->unknown()Landroidx/car/app/hardware/common/CarValue;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarValue;->UNKNOWN_INTEGER_LIST:Landroidx/car/app/hardware/common/CarValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 247
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 1
    .param p2, "timestampMillis"    # J
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 223
    iput-wide p2, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 224
    iput p4, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 225
    sget-object v0, Landroidx/car/app/hardware/common/CarZone;->CAR_ZONE_GLOBAL:Landroidx/car/app/hardware/common/CarZone;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JILjava/util/List;)V
    .locals 0
    .param p2, "timestampMillis"    # J
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p5, "zones":Ljava/util/List;, "Ljava/util/List<Landroidx/car/app/hardware/common/CarZone;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    .line 241
    iput-wide p2, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    .line 242
    iput p4, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    .line 243
    iput-object p5, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 244
    return-void
.end method

.method private static unimplemented()Landroidx/car/app/hardware/common/CarValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "TT;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Landroidx/car/app/hardware/common/CarValue;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/car/app/hardware/common/CarValue;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method private static unknown()Landroidx/car/app/hardware/common/CarValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/car/app/hardware/common/CarValue<",
            "TT;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Landroidx/car/app/hardware/common/CarValue;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/car/app/hardware/common/CarValue;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 198
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 199
    return v0

    .line 201
    :cond_0
    instance-of v1, p1, Landroidx/car/app/hardware/common/CarValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 202
    return v2

    .line 204
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/hardware/common/CarValue;

    .line 205
    .local v1, "otherCarValue":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<*>;"
    iget-object v3, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    iget-object v4, v1, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    iget-wide v5, v1, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    iget v4, v1, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    iget-object v4, v1, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    .line 208
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 205
    :goto_0
    return v0
.end method

.method public getCarZones()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/car/app/hardware/common/CarZone;",
            ">;"
        }
    .end annotation

    .line 170
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    iget v0, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 157
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    iget v0, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 149
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    iget-wide v0, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    iget-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 192
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    iget-object v0, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    iget-wide v1, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 179
    .local p0, "this":Landroidx/car/app/hardware/common/CarValue;, "Landroidx/car/app/hardware/common/CarValue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/common/CarValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/car/app/hardware/common/CarValue;->mTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/hardware/common/CarValue;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CarZones: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/hardware/common/CarValue;->mCarZones:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
