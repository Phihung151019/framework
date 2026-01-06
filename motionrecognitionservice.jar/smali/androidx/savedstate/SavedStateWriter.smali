.class public final Landroidx/savedstate/SavedStateWriter;
.super Ljava/lang/Object;
.source "SavedStateWriter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0013\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0087@\u0018\u00002\u00020\u0001B\u0015\u0008\u0001\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00082\n\u0010\u0015\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010\"\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020#\u00a2\u0006\u0004\u0008$\u0010%J\u001d\u0010&\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\'\u00a2\u0006\u0004\u0008(\u0010)J\u001d\u0010*\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020+\u00a2\u0006\u0004\u0008,\u0010-J\u001d\u0010.\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020/\u00a2\u0006\u0004\u00080\u00101J#\u00102\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020/03\u00a2\u0006\u0004\u00084\u00105J#\u00106\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020/07\u00a2\u0006\u0004\u00088\u00109J\u001d\u0010:\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020;\u00a2\u0006\u0004\u0008<\u0010=J\u001d\u0010>\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020?\u00a2\u0006\u0004\u0008@\u0010AJ\u001d\u0010B\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020C\u00a2\u0006\u0004\u0008D\u0010EJ\u001d\u0010F\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020G\u00a2\u0006\u0004\u0008H\u0010IJ\u001d\u0010J\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0011\u00a2\u0006\u0004\u0008K\u0010LJ\u001d\u0010M\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020N\u00a2\u0006\u0004\u0008O\u0010PJ#\u0010Q\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001107\u00a2\u0006\u0004\u0008R\u00109J\'\u0010S\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010T*\u00020U2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u0002HT\u00a2\u0006\u0004\u0008V\u0010WJ\u001d\u0010X\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020Y\u00a2\u0006\u0004\u0008Z\u0010[J\u001d\u0010\\\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020]\u00a2\u0006\u0004\u0008^\u0010_J\u0015\u0010`\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0004\u0008a\u0010bJ\'\u0010c\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010T*\u00020d2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u0002HT\u00a2\u0006\u0004\u0008e\u0010fJ-\u0010g\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010T*\u00020d2\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002HT03\u00a2\u0006\u0004\u0008h\u0010iJ-\u0010j\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010T*\u00020d2\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002HT07\u00a2\u0006\u0004\u0008k\u00109J!\u0010l\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008m\u0010nJ\'\u0010o\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0010\u0010\u001b\u001a\u000c\u0012\u0008\u0012\u00060\u0003j\u0002`\u000403\u00a2\u0006\u0004\u0008p\u0010qJ\'\u0010r\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0010\u0010\u001b\u001a\u000c\u0012\u0008\u0012\u00060\u0003j\u0002`\u000407\u00a2\u0006\u0004\u0008s\u00109J\u001d\u0010t\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020u\u00a2\u0006\u0004\u0008v\u0010wJ\u001d\u0010x\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020y\u00a2\u0006\u0004\u0008z\u0010{J-\u0010|\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010T*\u00020d2\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002HT0}\u00a2\u0006\u0004\u0008~\u0010\u007fJ \u0010\u0080\u0001\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J&\u0010\u0083\u0001\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a03\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J%\u0010\u0086\u0001\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a07\u00a2\u0006\u0005\u0008\u0087\u0001\u00109J\u0017\u0010\u0088\u0001\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0005\u0008\u0089\u0001\u0010bJ\u0013\u0010\u008a\u0001\u001a\u00020\u001aH\u00d6\u0001\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Landroidx/savedstate/SavedStateWriter;",
        "",
        "source",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "constructor-impl",
        "(Landroid/os/Bundle;)Landroid/os/Bundle;",
        "clear",
        "",
        "clear-impl",
        "(Landroid/os/Bundle;)V",
        "equals",
        "",
        "other",
        "equals-impl",
        "(Landroid/os/Bundle;Ljava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(Landroid/os/Bundle;)I",
        "putAll",
        "from",
        "putAll-impl",
        "(Landroid/os/Bundle;Landroid/os/Bundle;)V",
        "putBinder",
        "key",
        "",
        "value",
        "Landroid/os/IBinder;",
        "putBinder-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V",
        "putBoolean",
        "putBoolean-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Z)V",
        "putBooleanArray",
        "",
        "putBooleanArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[Z)V",
        "putChar",
        "",
        "putChar-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;C)V",
        "putCharArray",
        "",
        "putCharArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[C)V",
        "putCharSequence",
        "",
        "putCharSequence-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V",
        "putCharSequenceArray",
        "",
        "putCharSequenceArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V",
        "putCharSequenceList",
        "",
        "putCharSequenceList-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V",
        "putDouble",
        "",
        "putDouble-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;D)V",
        "putDoubleArray",
        "",
        "putDoubleArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[D)V",
        "putFloat",
        "",
        "putFloat-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;F)V",
        "putFloatArray",
        "",
        "putFloatArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[F)V",
        "putInt",
        "putInt-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;I)V",
        "putIntArray",
        "",
        "putIntArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[I)V",
        "putIntList",
        "putIntList-impl",
        "putJavaSerializable",
        "T",
        "Ljava/io/Serializable;",
        "putJavaSerializable-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V",
        "putLong",
        "",
        "putLong-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;J)V",
        "putLongArray",
        "",
        "putLongArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[J)V",
        "putNull",
        "putNull-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "putParcelable",
        "Landroid/os/Parcelable;",
        "putParcelable-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V",
        "putParcelableArray",
        "putParcelableArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V",
        "putParcelableList",
        "putParcelableList-impl",
        "putSavedState",
        "putSavedState-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V",
        "putSavedStateArray",
        "putSavedStateArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Bundle;)V",
        "putSavedStateList",
        "putSavedStateList-impl",
        "putSize",
        "Landroid/util/Size;",
        "putSize-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V",
        "putSizeF",
        "Landroid/util/SizeF;",
        "putSizeF-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V",
        "putSparseParcelableArray",
        "Landroid/util/SparseArray;",
        "putSparseParcelableArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SparseArray;)V",
        "putString",
        "putString-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V",
        "putStringArray",
        "putStringArray-impl",
        "(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)V",
        "putStringList",
        "putStringList-impl",
        "remove",
        "remove-impl",
        "toString",
        "toString-impl",
        "(Landroid/os/Bundle;)Ljava/lang/String;",
        "savedstate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final source:Landroid/os/Bundle;


# direct methods
.method private synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Bundle;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/SavedStateWriter;->source:Landroid/os/Bundle;

    return-void
.end method

.method public static final synthetic box-impl(Landroid/os/Bundle;)Landroidx/savedstate/SavedStateWriter;
    .locals 1

    new-instance v0, Landroidx/savedstate/SavedStateWriter;

    invoke-direct {v0, p0}, Landroidx/savedstate/SavedStateWriter;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static final clear-impl(Landroid/os/Bundle;)V
    .locals 0
    .param p0, "arg0"    # Landroid/os/Bundle;

    .line 231
    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    .line 232
    return-void
.end method

.method public static constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Landroid/os/Bundle;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/savedstate/SavedStateWriter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/savedstate/SavedStateWriter;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateWriter;->unbox-impl()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hashCode-impl(Landroid/os/Bundle;)I
    .locals 1

    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result v0

    return v0
.end method

.method public static final putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "from"    # Landroid/os/Bundle;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public static final putBinder-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    return-void
.end method

.method public static final putBoolean-impl(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public static final putBooleanArray-impl(Landroid/os/Bundle;Ljava/lang/String;[Z)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 153
    return-void
.end method

.method public static final putChar-impl(Landroid/os/Bundle;Ljava/lang/String;C)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 54
    return-void
.end method

.method public static final putCharArray-impl(Landroid/os/Bundle;Ljava/lang/String;[C)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 157
    return-void
.end method

.method public static final putCharSequence-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public static final putCharSequenceArray-impl(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public static final putCharSequenceList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriterKt;->toArrayListUnsafe(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 130
    return-void
.end method

.method public static final putDouble-impl(Landroid/os/Bundle;Ljava/lang/String;D)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 62
    return-void
.end method

.method public static final putDoubleArray-impl(Landroid/os/Bundle;Ljava/lang/String;[D)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 168
    return-void
.end method

.method public static final putFloat-impl(Landroid/os/Bundle;Ljava/lang/String;F)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 66
    return-void
.end method

.method public static final putFloatArray-impl(Landroid/os/Bundle;Ljava/lang/String;[F)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 172
    return-void
.end method

.method public static final putInt-impl(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public static final putIntArray-impl(Landroid/os/Bundle;Ljava/lang/String;[I)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 176
    return-void
.end method

.method public static final putIntList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriterKt;->toArrayListUnsafe(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 126
    return-void
.end method

.method public static final putJavaSerializable-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    return-void
.end method

.method public static final putLong-impl(Landroid/os/Bundle;Ljava/lang/String;J)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    return-void
.end method

.method public static final putLongArray-impl(Landroid/os/Bundle;Ljava/lang/String;[J)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 180
    return-void
.end method

.method public static final putNull-impl(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static final putParcelable-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    return-void
.end method

.method public static final putParcelableArray-impl(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 205
    return-void
.end method

.method public static final putParcelableList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriterKt;->toArrayListUnsafe(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 149
    return-void
.end method

.method public static final putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public static final putSavedStateArray-impl(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Bundle;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    move-object v0, p2

    check-cast v0, [Landroid/os/Parcelable;

    invoke-static {p0, p1, v0}, Landroidx/savedstate/SavedStateWriter;->putParcelableArray-impl(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 187
    return-void
.end method

.method public static final putSavedStateList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0, p1, p2}, Landroidx/savedstate/SavedStateWriter;->putParcelableList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public static final putSize-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 108
    return-void
.end method

.method public static final putSizeF-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    .line 118
    return-void
.end method

.method public static final putSparseParcelableArray-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 216
    return-void
.end method

.method public static final putString-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static final putStringArray-impl(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static final putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriterKt;->toArrayListUnsafe(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 138
    return-void
.end method

.method public static final remove-impl(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "arg0"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static toString-impl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedStateWriter(source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateWriter;->source:Landroid/os/Bundle;

    invoke-static {v0, p1}, Landroidx/savedstate/SavedStateWriter;->equals-impl(Landroid/os/Bundle;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateWriter;->source:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->hashCode-impl(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateWriter;->source:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->toString-impl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/SavedStateWriter;->source:Landroid/os/Bundle;

    return-object v0
.end method
