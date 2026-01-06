.class Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
.super Ljava/lang/Object;
.source "ExtensionVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/ExtensionVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final VERSION_1_0:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

.field public static final VERSION_1_1:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

.field public static final VERSION_1_2:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

.field public static final VERSION_1_3:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

.field public static final VERSION_1_4:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

.field public static final VERSION_1_5:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

.field private static final VERSION_STRING_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMajor:I

.field private final mMinor:I

.field private final mPatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v1, v2}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_0:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 75
    invoke-static {v0, v0, v1, v2}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_1:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 76
    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_2:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 77
    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_3:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 78
    const/4 v3, 0x4

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_4:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 79
    const/4 v3, 0x5

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_5:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 81
    nop

    .line 82
    const-string v0, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:\\-(.+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_STRING_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I
    .param p4, "description"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mMajor:I

    .line 125
    iput p2, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mMinor:I

    .line 126
    iput p3, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mPatch:I

    .line 127
    iput-object p4, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mDescription:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "patch"    # I
    .param p3, "description"    # Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private static createBigInteger(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "version"    # Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 189
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMinor()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getPatch()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
    .locals 6
    .param p0, "versionString"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    return-object v1

    .line 103
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 104
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    return-object v1

    .line 108
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "major":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, "minor":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "patch":I
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    .line 112
    .local v4, "description":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public compareTo(I)I
    .locals 1
    .param p1, "majorVersion"    # I

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->compareTo(II)I

    move-result v0

    return v0
.end method

.method public compareTo(II)I
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMinor()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)I
    .locals 2
    .param p1, "other"    # Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 167
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->createBigInteger(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->createBigInteger(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 73
    check-cast p1, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->compareTo(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 197
    instance-of v0, p1, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    return v1

    .line 201
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 204
    .local v0, "otherVersionObj":Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMinor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getPatch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getPatch()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 204
    :goto_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mMajor:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mMinor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->mPatch:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMinor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getPatch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMajor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getMinor()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getPatch()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
