class EliminarMateria():
    def __init__(self, DB):
        self.DB = DB 
    def run(self, id):
        cur = self.DB.cursor()
        cur.execute('DELETE FROM materias WHERE id = {0}'.format(id))
        cur.close()