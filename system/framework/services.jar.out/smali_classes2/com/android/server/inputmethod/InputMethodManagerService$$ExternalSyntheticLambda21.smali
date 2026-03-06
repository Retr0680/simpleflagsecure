.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:Ljava/io/FileDescriptor;

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$2:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$3:[Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$2:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$3:[Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/android/server/inputmethod/UserData;

    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->$r8$lambda$q4DisDUdgDij-anD9rB61YeXSHI(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method
