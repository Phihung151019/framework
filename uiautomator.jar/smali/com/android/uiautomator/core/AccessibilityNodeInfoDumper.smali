.class public Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoDumper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final NAF_EXCLUDED_CLASSES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    const-class v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    .line 46
    const-class v0, Landroid/widget/GridView;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/widget/ListView;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TableLayout;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 295
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 296
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 297
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 298
    .local v2, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_0

    .line 299
    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 302
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 306
    :cond_1
    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    return v4

    .line 296
    .end local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .restart local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    :goto_2
    return v4

    .line 310
    .end local v1    # "x":I
    .end local v2    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private static dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V
    .locals 9
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const-string v0, ""

    const-string v1, "node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-string v2, "NAF"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_0
    const-string v2, "index"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource-id"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content-desc"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkable"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checked"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clickable"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "focusable"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "focused"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scrollable"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "long-clickable"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-static {p0, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string v3, "bounds"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getDrawingOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawing-order"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 224
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 225
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 226
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-static {v4, p1, v3, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 229
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_1

    .line 231
    :cond_1
    sget-object v5, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Skipping invisible child: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    :cond_2
    sget-object v5, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 234
    const-string v7, "Null child %d/%d, parent: %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v3    # "i":I
    :cond_3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    return-void
.end method

.method private static dumpWindowRec(Landroid/view/accessibility/AccessibilityWindowInfo;Lorg/xmlpull/v1/XmlSerializer;IIII)V
    .locals 12
    .param p0, "winfo"    # Landroid/view/accessibility/AccessibilityWindowInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const-string v0, ""

    const-string v1, "window"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string v2, "index"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 164
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string v4, "title"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 166
    .local v3, "tmpBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 167
    const-string v4, "bounds"

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "active"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "focused"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 170
    const-string v5, "accessibility-focused"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "layer"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {p1, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v4

    .line 176
    .local v4, "count":I
    const/4 v5, 0x0

    move v8, v5

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 177
    invoke-virtual {p0, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    .line 178
    .local v6, "child":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v6, :cond_1

    .line 179
    sget-object v5, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 180
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    filled-new-array {v7, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    .line 179
    const-string v9, "Null window child %d/%d, parent: %s"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_2

    .line 183
    :cond_1
    move-object v7, p1

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowRec(Landroid/view/accessibility/AccessibilityWindowInfo;Lorg/xmlpull/v1/XmlSerializer;IIII)V

    .line 184
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 176
    .end local v6    # "child":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 186
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 187
    .local v5, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_3

    .line 188
    const-string v6, "hierarchy"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string v8, "rotation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const/4 v8, 0x0

    move/from16 v10, p4

    invoke-static {v5, p1, v8, p3, v10}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 191
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 192
    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 187
    :cond_3
    move/from16 v10, p4

    .line 194
    :goto_3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;III)V
    .locals 5
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "local"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 64
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 65
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 66
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 68
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    .line 69
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "window_dump.xml"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    .line 71
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    .locals 9
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "dumpFile"    # Ljava/io/File;
    .param p2, "rotation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 84
    const-string v0, "hierarchy"

    const-string v1, ""

    if-nez p0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, "startTime":J
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 90
    .local v4, "writer":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 91
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 92
    .local v6, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 93
    const-string v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    invoke-interface {v5, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v7, "rotation"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const/4 v7, 0x0

    invoke-static {p0, v5, v7, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 97
    invoke-interface {v5, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 99
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v4    # "writer":Ljava/io/FileWriter;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stringWriter":Ljava/io/StringWriter;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v4, "failed to dump window to file"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 105
    .local v0, "endTime":J
    sget-object v4, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetch time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public static dumpWindowsToFile(Landroid/util/SparseArray;Ljava/io/File;Landroid/hardware/display/DisplayManagerGlobal;)V
    .locals 22
    .param p1, "dumpFile"    # Ljava/io/File;
    .param p2, "displayManager"    # Landroid/hardware/display/DisplayManagerGlobal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;",
            "Ljava/io/File;",
            "Landroid/hardware/display/DisplayManagerGlobal;",
            ")V"
        }
    .end annotation

    .line 117
    .local p0, "allWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    move-object/from16 v1, p0

    const-string v0, "display"

    const-string v2, "displays"

    const-string v3, ""

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 122
    .local v4, "startTime":J
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 123
    .local v6, "writer":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    move-object v10, v8

    .line 124
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v8, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 126
    const-string v9, "UTF-8"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const/4 v9, 0x0

    .local v9, "d":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v11

    move v15, v11

    .local v15, "nd":I
    :goto_0
    if-ge v9, v15, :cond_4

    .line 129
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 130
    .local v11, "displayId":I
    move-object/from16 v12, p2

    invoke-virtual {v12, v11}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v13

    .line 131
    .local v13, "display":Landroid/view/Display;
    if-nez v13, :cond_1

    .line 132
    move-wide/from16 v16, v4

    move v5, v9

    goto/16 :goto_2

    .line 134
    :cond_1
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 135
    .local v14, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 136
    move-wide/from16 v16, v4

    move v5, v9

    goto/16 :goto_2

    .line 138
    :cond_2
    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string v1, "id"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v16, v4

    .end local v4    # "startTime":J
    .local v16, "startTime":J
    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    invoke-virtual {v13}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 141
    .local v1, "rotation":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 142
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v13, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 143
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v19, v18

    .local v19, "n":I
    :goto_1
    move/from16 v18, v1

    move/from16 v1, v19

    .end local v19    # "n":I
    .local v1, "n":I
    .local v18, "rotation":I
    if-ge v5, v1, :cond_3

    .line 144
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/accessibility/AccessibilityWindowInfo;

    iget v12, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v20, v13

    .end local v13    # "display":Landroid/view/Display;
    .local v20, "display":Landroid/view/Display;
    iget v13, v4, Landroid/graphics/Point;->y:I

    move/from16 v21, v11

    move v11, v5

    move v5, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v14

    move/from16 v14, v18

    move/from16 v18, v21

    .end local v9    # "d":I
    .local v5, "d":I
    .local v11, "i":I
    .local v14, "rotation":I
    .local v18, "displayId":I
    .local v19, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-static/range {v9 .. v14}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowRec(Landroid/view/accessibility/AccessibilityWindowInfo;Lorg/xmlpull/v1/XmlSerializer;IIII)V

    .line 143
    add-int/lit8 v9, v11, 0x1

    move-object/from16 v11, v19

    move/from16 v19, v1

    move v1, v14

    move-object v14, v11

    move v11, v9

    move v9, v5

    move v5, v11

    move-object/from16 v12, p2

    move/from16 v11, v18

    move-object/from16 v13, v20

    .end local v11    # "i":I
    .local v9, "i":I
    goto :goto_1

    .end local v19    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v20    # "display":Landroid/view/Display;
    .local v5, "i":I
    .local v9, "d":I
    .local v11, "displayId":I
    .restart local v13    # "display":Landroid/view/Display;
    .local v14, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local v18, "rotation":I
    :cond_3
    move-object/from16 v20, v13

    move-object/from16 v19, v14

    move/from16 v14, v18

    move/from16 v18, v11

    move v11, v5

    move v5, v9

    .line 146
    .end local v1    # "n":I
    .end local v9    # "d":I
    .end local v11    # "displayId":I
    .end local v13    # "display":Landroid/view/Display;
    .local v5, "d":I
    .local v14, "rotation":I
    .local v18, "displayId":I
    .restart local v19    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .restart local v20    # "display":Landroid/view/Display;
    invoke-interface {v10, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v14    # "rotation":I
    .end local v18    # "displayId":I
    .end local v19    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v20    # "display":Landroid/view/Display;
    :goto_2
    add-int/lit8 v9, v5, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v4, v16

    .end local v5    # "d":I
    .restart local v9    # "d":I
    goto/16 :goto_0

    .end local v16    # "startTime":J
    .local v4, "startTime":J
    :cond_4
    move-wide/from16 v16, v4

    move v5, v9

    .line 148
    .end local v4    # "startTime":J
    .end local v9    # "d":I
    .end local v15    # "nd":I
    .restart local v16    # "startTime":J
    invoke-interface {v10, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 150
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v6    # "writer":Ljava/io/FileWriter;
    .end local v8    # "stringWriter":Ljava/io/StringWriter;
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_5

    .line 152
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v16    # "startTime":J
    .restart local v4    # "startTime":J
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v7, p1

    :goto_3
    move-wide/from16 v16, v4

    .line 153
    .end local v4    # "startTime":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "startTime":J
    :goto_4
    sget-object v1, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v2, "failed to dump window to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "endTime":J
    sget-object v2, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private static nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 269
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, "isNaf":Z
    :goto_0
    if-nez v0, :cond_1

    .line 274
    return v1

    .line 279
    :cond_1
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1
.end method

.method private static nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 7
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 250
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "className":Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 252
    .local v5, "excludedClassName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 253
    const/4 v1, 0x1

    return v1

    .line 251
    .end local v5    # "excludedClassName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    :cond_1
    return v3
.end method

.method private static safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 314
    if-nez p0, :cond_0

    .line 315
    const-string v0, ""

    return-object v0

    .line 317
    :cond_0
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 322
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 334
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 336
    .local v2, "ch":C
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x8

    if-le v2, v3, :cond_15

    :cond_0
    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    const/16 v3, 0xc

    if-le v2, v3, :cond_15

    :cond_1
    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_15

    :cond_2
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_3

    const/16 v3, 0x84

    if-le v2, v3, :cond_15

    :cond_3
    const/16 v3, 0x86

    if-lt v2, v3, :cond_4

    const/16 v3, 0x9f

    if-le v2, v3, :cond_15

    :cond_4
    const v3, 0xfdd0

    if-lt v2, v3, :cond_5

    const v3, 0xfddf

    if-le v2, v3, :cond_15

    :cond_5
    const v3, 0x1fffe

    if-lt v2, v3, :cond_6

    const v3, 0x1ffff

    if-le v2, v3, :cond_15

    :cond_6
    const v3, 0x2fffe

    if-lt v2, v3, :cond_7

    const v3, 0x2ffff

    if-le v2, v3, :cond_15

    :cond_7
    const v3, 0x3fffe

    if-lt v2, v3, :cond_8

    const v3, 0x3ffff

    if-le v2, v3, :cond_15

    :cond_8
    const v3, 0x4fffe

    if-lt v2, v3, :cond_9

    const v3, 0x4ffff

    if-le v2, v3, :cond_15

    :cond_9
    const v3, 0x5fffe

    if-lt v2, v3, :cond_a

    const v3, 0x5ffff

    if-le v2, v3, :cond_15

    :cond_a
    const v3, 0x6fffe

    if-lt v2, v3, :cond_b

    const v3, 0x6ffff

    if-le v2, v3, :cond_15

    :cond_b
    const v3, 0x7fffe

    if-lt v2, v3, :cond_c

    const v3, 0x7ffff

    if-le v2, v3, :cond_15

    :cond_c
    const v3, 0x8fffe

    if-lt v2, v3, :cond_d

    const v3, 0x8ffff

    if-le v2, v3, :cond_15

    :cond_d
    const v3, 0x9fffe

    if-lt v2, v3, :cond_e

    const v3, 0x9ffff

    if-le v2, v3, :cond_15

    :cond_e
    const v3, 0xafffe

    if-lt v2, v3, :cond_f

    const v3, 0xaffff

    if-le v2, v3, :cond_15

    :cond_f
    const v3, 0xbfffe

    if-lt v2, v3, :cond_10

    const v3, 0xbffff

    if-le v2, v3, :cond_15

    :cond_10
    const v3, 0xcfffe

    if-lt v2, v3, :cond_11

    const v3, 0xcffff

    if-le v2, v3, :cond_15

    :cond_11
    const v3, 0xdfffe

    if-lt v2, v3, :cond_12

    const v3, 0xdffff

    if-le v2, v3, :cond_15

    :cond_12
    const v3, 0xefffe

    if-lt v2, v3, :cond_13

    const v3, 0xeffff

    if-le v2, v3, :cond_15

    :cond_13
    const v3, 0xffffe

    if-lt v2, v3, :cond_14

    const v3, 0xfffff

    if-le v2, v3, :cond_15

    :cond_14
    const v3, 0x10fffe

    if-lt v2, v3, :cond_16

    const v3, 0x10ffff

    if-gt v2, v3, :cond_16

    .line 347
    :cond_15
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 349
    :cond_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 351
    .end local v1    # "i":I
    .end local v2    # "ch":C
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
