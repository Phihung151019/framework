.class public Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
.super Ljava/lang/Object;
.source "ContextAwarePropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    }
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final booleanVal:[Z

.field private static charArrayVal:[C

.field private static doubleArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleArrayVal:[D

.field private static doubleHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static doubleVal:D

.field private static floatArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static floatArrayVal:[F

.field private static floatHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static floatVal:F

.field private static integerArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static integerArrayVal:[I

.field private static integerHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static integerVal:I

.field private static longArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static longArrayVal:[J

.field private static longHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static longVal:J

.field private static stringArrayListVal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringArrayVal:[Ljava/lang/String;

.field private static stringHashSetVal:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringVal:Ljava/lang/String;


# instance fields
.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetbooleanVal()[Z
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetcharArrayVal()[C
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->charArrayVal:[C

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdoubleArrayListVal()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdoubleArrayVal()[D
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayVal:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdoubleHashSetVal()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdoubleVal()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetfloatArrayListVal()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfloatArrayVal()[F
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayVal:[F

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfloatHashSetVal()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfloatVal()F
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetintegerArrayListVal()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetintegerArrayVal()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayVal:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetintegerHashSetVal()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetintegerVal()I
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetlongArrayListVal()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlongArrayVal()[J
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlongHashSetVal()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlongVal()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetstringArrayListVal()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayListVal:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetstringArrayVal()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetstringHashSetVal()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringHashSetVal:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetstringVal()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputcharArrayVal([C)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->charArrayVal:[C

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputdoubleArrayListVal(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayListVal:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputdoubleArrayVal([D)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleArrayVal:[D

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputdoubleHashSetVal(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleHashSetVal:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputdoubleVal(D)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->doubleVal:D

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfloatArrayListVal(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayListVal:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfloatArrayVal([F)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatArrayVal:[F

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfloatHashSetVal(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatHashSetVal:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfloatVal(F)V
    .locals 0

    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->floatVal:F

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputintegerArrayListVal(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayListVal:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputintegerArrayVal([I)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerArrayVal:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputintegerHashSetVal(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerHashSetVal:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputintegerVal(I)V
    .locals 0

    sput p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->integerVal:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlongArrayListVal(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlongArrayVal([J)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longArrayVal:[J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlongHashSetVal(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longHashSetVal:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlongVal(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->longVal:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputstringArrayListVal(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayListVal:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputstringArrayVal([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringArrayVal:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputstringHashSetVal(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringHashSetVal:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputstringVal(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->stringVal:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Z

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->booleanVal:[Z

    .line 718
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 551
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 552
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 553
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 554
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 555
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 556
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "input"    # Landroid/os/Parcel;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 567
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 674
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 675
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 676
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 677
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 678
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 679
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 681
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 682
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 683
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 684
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 685
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 686
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 688
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 688
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 690
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 690
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 692
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 692
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 694
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 694
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 696
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 696
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 699
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 699
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 701
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 701
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 703
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 703
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 705
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 705
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 707
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 707
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 715
    return-void
.end method

.method private setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 940
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->mType:I

    .line 941
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public getBooleanTypeCode()I
    .locals 1

    .line 737
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCharArrayTypeCode()I
    .locals 1

    .line 791
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleArrayListTypeCode()I
    .locals 1

    .line 872
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleArrayTypeCode()I
    .locals 1

    .line 827
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleHashSetTypeCode()I
    .locals 1

    .line 917
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getDoubleTypeCode()I
    .locals 1

    .line 773
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatArrayListTypeCode()I
    .locals 1

    .line 863
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatArrayTypeCode()I
    .locals 1

    .line 818
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatHashSetTypeCode()I
    .locals 1

    .line 908
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getFloatTypeCode()I
    .locals 1

    .line 764
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerArrayListTypeCode()I
    .locals 1

    .line 845
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerArrayTypeCode()I
    .locals 1

    .line 800
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerHashSetTypeCode()I
    .locals 1

    .line 890
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getIntegerTypeCode()I
    .locals 1

    .line 746
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongArrayListTypeCode()I
    .locals 1

    .line 854
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongArrayTypeCode()I
    .locals 1

    .line 809
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongHashSetTypeCode()I
    .locals 1

    .line 899
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getLongTypeCode()I
    .locals 1

    .line 755
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringArrayListTypeCode()I
    .locals 1

    .line 881
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringArrayTypeCode()I
    .locals 1

    .line 836
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringHashSetTypeCode()I
    .locals 1

    .line 926
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getStringTypeCode()I
    .locals 1

    .line 782
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 949
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->mType:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "value":Ljava/lang/Object;, "TE;"
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 578
    .local v4, "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 579
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 580
    goto :goto_1

    .line 577
    .end local v4    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    :cond_1
    :goto_1
    return-object v0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 595
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->values()[Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 596
    .local v3, "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getCode()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->setType(I)V

    .line 598
    invoke-virtual {v3, p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->setValue(Ljava/lang/Object;)V

    .line 599
    goto :goto_1

    .line 595
    .end local v3    # "i":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_1
    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 622
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->BOOLEAN_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 623
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 625
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 626
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 627
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->CHAR_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 630
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 631
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 632
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 633
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 634
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 635
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 636
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 635
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 638
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 639
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 640
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 641
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 640
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 642
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 643
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 642
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 644
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 645
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 644
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 646
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_ARRAY_LIST_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 647
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 646
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 649
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->INTEGER_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 650
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 649
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 651
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->LONG_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 652
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 651
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 653
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->FLOAT_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 654
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 653
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 655
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->DOUBLE_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 656
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 655
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 657
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->STRING_HASH_SET_TYPE:Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;

    .line 658
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 657
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    return-void
.end method
